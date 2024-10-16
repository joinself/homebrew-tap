require 'digest'

class SelfSdk < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url ""
    sha256 "da4024f7d7ccc46ed17727af1626f660a64284cadb2133324cae2e51d3878484"
  end

  if OS.mac? && Hardware::CPU.arm?
    url ""
    sha256 "f72263338888388f06a4799c03fcdd48c1be20bdb43f152fd520aa047775c9ef"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://artifactregistry.googleapis.com/download/v1/projects/principal-oxide-204416/locations/europe/repositories/releases/files/self-c-sdk:0.31.0:self-c-sdk_0.31.0_linux_amd64.tar.gz:download"
    sha256 "21c02e13ce460d9d1f8b501af286de33de14477a481a450c75ea35302c0912c9"
  end

  if OS.linux? && Hardware::CPU.arm?
    url ""
    sha256 "ee7345be100cc3c21f93993e91d21a1bb76284ac74bfe8e8d8909a1987ae8b32"
  end

  def install
    if OS.mac? && Hardware::CPU.intel?
      arch ""
    end

    if OS.mac? && Hardware::CPU.arm?
      arch ""
    end

    if OS.linux? && Hardware::CPU.intel?
      arch = "x86_64"
    end

    if OS.linux? && Hardware::CPU.arm?
      arch ""
    end

    url = "https://artifactregistry.googleapis.com/download/v1/projects/principal-oxide-204416/locations/europe/repositories/releases/files/self-c-sdk:0.31.0:self-c-sdk_0.31.0_linux_amd64.tar.gz:download"
    #url = "https://artifactregistry.googleapis.com/download/v1/projects/principal-oxide-204416/locations/europe/repositories/artifacts/files/self-sdk-homebrew:0.29.0:self-sdk-0.29.0-homebrew.tar.gz:download"
    url_sha256 = Digest::SHA256.hexdigest(url)
    pkg = HOMEBREW_CACHE/"downloads/#{url_sha256}--self-c-sdk:0.31.0:self-c-sdk_0.31.0_linux_amd64.tar.gz:download"
    #pkg = HOMEBREW_CACHE/"downloads/#{url_sha256}--self-sdk-homebrew:0.29.0:self-sdk-0.29.0-homebrew.tar.gz:download"
    mv(pkg, "self-c-sdk.tar.gz")

    system "tar", "-zxvf", "self-c-sdk.tar.gz"
    lib.install "self-sdk-x86_64-unknown-linux-gnu-0.31.0/libself_sdk.a"
    include.install "self-sdk-x86_64-unknown-linux-gnu-0.31.0/self-sdk.h"
    #lib.install "self-sdk-#{arch}-apple-darwin-0.31.0/libself_sdk.a"
    #include.install "self-sdk-#{arch}-apple-darwin-0.31.0/self-sdk.h"

    #if OS.mac?
    # if OS.linux?
    #   arch = "aarch64"
    #
    #   if Hardware::CPU.intel?
    #     arch = "x86_64"
    #   end
    #
    #   system "tar", "-zxvf", "self-c-sdk.tar.gz"
    #   lib.install "self-sdk-#{arch}-apple-darwin-0.29.0/libself_sdk.a"
    #   include.install "self-sdk-#{arch}-apple-darwin-0.29.0/self-sdk.h"
    # end
  end
end
