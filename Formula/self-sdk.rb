require 'digest'

class SelfSdk < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "foo"
    sha256 "da4024f7d7ccc46ed17727af1626f660a64284cadb2133324cae2e51d3878484"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "foo1"
    sha256 "f72263338888388f06a4799c03fcdd48c1be20bdb43f152fd520aa047775c9ef"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://artifactregistry.googleapis.com/download/v1/projects/principal-oxide-204416/locations/europe/repositories/releases/files/self-c-sdk:0.31.0:self-c-sdk_0.31.0_linux_amd64.tar.gz:download"
    sha256 "21c02e13ce460d9d1f8b501af286de33de14477a481a450c75ea35302c0912c9"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "foo2"
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
      url = "https://artifactregistry.googleapis.com/download/v1/projects/principal-oxide-204416/locations/europe/repositories/releases/files/self-c-sdk:0.31.0:self-c-sdk_0.31.0_linux_amd64.tar.gz:download"
      filename = "self-c-sdk:0.31.0:self-c-sdk_0.31.0_linux_amd64.tar.gz:download"
      wd = "self-sdk-x86_64-unknown-linux-gnu-0.31.0"
    end

    if OS.linux? && Hardware::CPU.arm?
      arch ""
    end

    #puts "homepage: #{self.url}"

    #url = "https://artifactregistry.googleapis.com/download/v1/projects/principal-oxide-204416/locations/europe/repositories/releases/files/self-c-sdk:0.31.0:self-c-sdk_0.31.0_linux_amd64.tar.gz:download"
    url_sha256 = Digest::SHA256.hexdigest(url)
    pkg = HOMEBREW_CACHE/"downloads/#{url_sha256}--#{filename}"
    mv(pkg, "self-c-sdk.tar.gz")

    system "tar", "-zxvf", "self-c-sdk.tar.gz"
    lib.install "#{wd}/libself_sdk.a"
    include.install "#{wd}/self-sdk.h"
  end
end
