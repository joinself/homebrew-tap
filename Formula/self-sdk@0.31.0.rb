class SelfSdkAT0.31.0 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.31.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.31.0_darwin_amd64.tar.gz"
    sha256 "da4024f7d7ccc46ed17727af1626f660a64284cadb2133324cae2e51d3878484"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.31.0_darwin_arm64.tar.gz"
    sha256 "f72263338888388f06a4799c03fcdd48c1be20bdb43f152fd520aa047775c9ef"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.31.0_linux_amd64.tar.gz"
    sha256 "21c02e13ce460d9d1f8b501af286de33de14477a481a450c75ea35302c0912c9"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.31.0_linux_arm64.tar.gz"
    sha256 "ee7345be100cc3c21f93993e91d21a1bb76284ac74bfe8e8d8909a1987ae8b32"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
