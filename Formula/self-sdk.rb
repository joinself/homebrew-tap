class MyDownloadStrategy < CurlDownloadStrategy

  def initialize(url, name, version, **meta)
    super
  end

  def fetch(timeout: nil)
    #opoo "Unhandled options in #{self.class}#fetch: #{options.keys.join(", ")}" unless options.empty?

    puts "being"
    puts url
    puts name
    `curl -o foo.tar.gz #{url}`
    `tar -zxvf foo.tar.gz`
    Dir.pwd
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
    system "ls -lah"
    lib.install "self-sdk-aarch64-apple-darwin-0.28.0/libself_sdk.a"
    system "echo", "end"
  end
end
