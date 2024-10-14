class MyDownloadStrategy < CurlDownloadStrategy

  def fetch(timeout: nil)
  end_time = Time.now + timeout if timeout

  download_lock = DownloadLock.new(temporary_path)
  download_lock.lock

  urls = [url, *mirrors]

  begin
    url = urls.shift

    if (domain = Homebrew::EnvConfig.artifact_domain)
      url = url.sub(%r{^https?://#{GitHubPackages::URL_DOMAIN}/}o, "#{domain.chomp("/")}/")
      urls = [] if Homebrew::EnvConfig.artifact_domain_no_fallback?
    end

    ohai "Downloading #{url}"

    use_cached_location = cached_location.exist?
    use_cached_location = false if version.respond_to?(:latest?) && version.latest?

    resolved_url, _, last_modified, _, is_redirection = begin
      resolve_url_basename_time_file_size(url, timeout: Utils::Timer.remaining!(end_time))
    rescue ErrorDuringExecution
      raise unless use_cached_location
    end

    # Authorization is no longer valid after redirects
    meta[:headers]&.delete_if { |header| header.start_with?("Authorization") } if is_redirection

    # The cached location is no longer fresh if Last-Modified is after the file's timestamp
    use_cached_location = false if cached_location.exist? && last_modified && last_modified > cached_location.mtime

    if use_cached_location
      puts "Already downloaded: #{cached_location}"
    else
      begin
        _fetch(url:, resolved_url:, timeout: Utils::Timer.remaining!(end_time))
      rescue ErrorDuringExecution
        raise CurlDownloadStrategyError, url
      end
      cached_location.dirname.mkpath
      temporary_path.rename(cached_location)
    end

    symlink_location.dirname.mkpath
    FileUtils.ln_s cached_location.relative_path_from(symlink_location.dirname), symlink_location, force: true
  rescue CurlDownloadStrategyError
    raise if urls.empty?

    puts "Trying a mirror..."
    retry
  rescue Timeout::Error => e
    raise Timeout::Error, "Timed out downloading #{self.url}: #{e}"
  end
ensure
  download_lock&.unlock
  download_lock&.path&.unlink
end

  # def initialize(url, name, version, **meta)
  #   super
  # end
  #
  # def fetch(timeout: nil)
  #   puts "being"
  #   puts url
  #   puts name
  #   curl_download url, to: "rat.tar.gz"
  #   #curl_download url, to: temporary_path
  #   #`curl -o foo.tar.gz #{url}`
  #   puts temporary_path
  #   `tar -zxvf rat.tar.gz`
  #   #puts Dir.pwd
  #   #puts meta.inspect
  #   puts "end"
  #
  #   # downloads output to `temporary_path`
  # end


end

class SelfSdk < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  url "https://artifactregistry.googleapis.com/download/v1/projects/principal-oxide-204416/locations/europe/repositories/artifacts/files/self-sdk:0.28.0:self-sdk-aarch64-apple-darwin-0.28.0.tar.gz:download", using: MyDownloadStrategy
  sha256 "d86798f4dd32ad2841fb10819f20446d43abdeb14c5fb4a99e589c1d474189e7"
  license "MIT"

  def install
    system "echo", "begin"
    system "pwd"
    puts buildpath
    puts Dir.pwd
    system "ls -lah"
    lib.install "self-sdk-aarch64-apple-darwin-0.28.0/libself_sdk.a"
    system "echo", "end"
  end
end
