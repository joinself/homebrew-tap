class MyDownloadStrategy < CurlDownloadStrategy

 attr_reader :mirrors

  def initialize(url, name, version, **meta)
    super
    @mirrors = meta.fetch(:mirrors, [])
  end

  def fetch()
    download_lock = LockFile.new(temporary_path.basename)
    download_lock.lock

    urls = [url, *mirrors]

    begin
      url = urls.shift

      ohai "Downloading #{url}"

      resolved_url, _, url_time = resolve_url_basename_time(url)

      fresh = if cached_location.exist? && url_time
        url_time <= cached_location.mtime
      elsif version.respond_to?(:latest?)
        !version.latest?
      else
        true
      end

      if cached_location.exist? && fresh
        puts "Already downloaded: #{cached_location}"
      else
        begin
          _fetch(url: url, resolved_url: resolved_url)
        rescue ErrorDuringExecution
          raise CurlDownloadStrategyError, url
        end
        ignore_interrupts do
          cached_location.dirname.mkpath
          temporary_path.rename(cached_location)
          symlink_location.dirname.mkpath
        end
      end

      FileUtils.ln_s cached_location.relative_path_from(symlink_location.dirname), symlink_location, force: true
    rescue CurlDownloadStrategyError
      raise if urls.empty?

      puts "Trying a mirror..."
      retry
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
