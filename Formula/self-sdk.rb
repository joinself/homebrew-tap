require 'digest'

class SelfSdk < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  url "https://artifactregistry.googleapis.com/download/v1/projects/principal-oxide-204416/locations/europe/repositories/artifacts/files/self-sdk-homebrew:0.29.0:self-sdk-0.29.0-homebrew.tar.gz:download"
  sha256 "0000a572730b8f1802b34d7842e145c3d625553a9d7380a1faec16e438ec3522"
  license "MIT"

  def install
    url = "https://artifactregistry.googleapis.com/download/v1/projects/principal-oxide-204416/locations/europe/repositories/artifacts/files/self-sdk-homebrew:0.29.0:self-sdk-0.29.0-homebrew.tar.gz:download"
    url_sha256 = Digest::SHA256.hexdigest(url)
    pkg = HOMEBREW_CACHE/"downloads/#{url_sha256}--self-sdk-homebrew:0.29.0:self-sdk-0.29.0-homebrew.tar.gz:download"
    mv(pkg, "self-sdk.tar.gz")

    #if OS.mac?
    if OS.linux?
      arch = "aarch64"

      if Hardware::CPU.intel?
        arch = "x86_64"
      end
    
      system "tar", "-zxvf", "self-sdk.tar.gz"
      lib.install "self-sdk-#{arch}-apple-darwin-0.29.0/libself_sdk.a"
      include.install "self-sdk-#{arch}-apple-darwin-0.29.0/self-sdk.h"
    end
  end
end
