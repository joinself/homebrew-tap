require 'digest'

class SelfSdk < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  url "https://artifactregistry.googleapis.com/download/v1/projects/principal-oxide-204416/locations/europe/repositories/artifacts/files/self-sdk:0.28.0:self-sdk-aarch64-apple-darwin-0.28.0.tar.gz:download"
  sha256 "d86798f4dd32ad2841fb10819f20446d43abdeb14c5fb4a99e589c1d474189e7"
  license "MIT"

  def install
    url = "https://artifactregistry.googleapis.com/download/v1/projects/principal-oxide-204416/locations/europe/repositories/artifacts/files/self-sdk:0.28.0:self-sdk-aarch64-apple-darwin-0.28.0.tar.gz:download"
    url_sha256 = Digest::SHA256.hexdigest(url)

    if OS.linux?
      if Hardware::CPU.arm?
        puts "I am arm"
      end
    end

    pkg = HOMEBREW_CACHE/"downloads/#{url_sha256}--self-sdk:0.28.0:self-sdk-aarch64-apple-darwin-0.28.0.tar.gz:download"
    mv(pkg, "self-sdk.tar.gz")

    system "tar", "-zxvf", "self-sdk.tar.gz"
    lib.install "self-sdk-aarch64-apple-darwin-0.28.0/libself_sdk.a"
    include.install "self-sdk-aarch64-apple-darwin-0.28.0/self-sdk.h"
  end
end
