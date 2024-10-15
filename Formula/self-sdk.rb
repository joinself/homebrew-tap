require 'digest'
require 'fileutils'

class MyDownloadStrategy < CurlDownloadStrategy

  def initialize(url, name, version, **meta)
    super
  end

  def fetch(timeout: nil)
    puts "being"
    puts url
    puts name
    #curl_download url, to: "rat.tar.gz"
    curl_download url, to: temporary_path
    #`curl -o foo.tar.gz #{url}`
    puts temporary_path
    #`tar -zxvf rat.tar.gz`
    #puts Dir.pwd
    #puts meta.inspect
    puts "end"

    # downloads output to `temporary_path`
  end


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
    url = "https://artifactregistry.googleapis.com/download/v1/projects/principal-oxide-204416/locations/europe/repositories/artifacts/files/self-sdk:0.28.0:self-sdk-aarch64-apple-darwin-0.28.0.tar.gz:download"

    url_sha256 = Digest::SHA256.hexdigest(url)
    puts url_sha256

    puts HOMEBREW_CACHE

    #pkg = Pathname.glob(HOMEBREW_CACHE/"downloads/#{url_sha256}--self-sdk:0.28.0:self-sdk-aarch64-apple-darwin-0.28.0.tar.gz:download")
    #puts "pkg: #{pkg.dirname}/#{pkg.basename}"

    pkg2 = HOMEBREW_CACHE/"downloads/#{url_sha256}--self-sdk:0.28.0:self-sdk-aarch64-apple-darwin-0.28.0.tar.gz:download"

    puts "pkg2: #{pkg2}"

    #File.rename(pkg, "foo.tar.gz")
    FileUtils.mkdir(buildpath/"test")
    FileUtils.cp(pkg2, buildpath/"foo.tar.gz")

    puts buildpath
    puts Dir[buildpath]
    puts Dir.pwd
    system "ls -lah #{buildpath}"
    lib.install "self-sdk-aarch64-apple-darwin-0.28.0/libself_sdk.a"
    system "echo", "end"
  end
end
