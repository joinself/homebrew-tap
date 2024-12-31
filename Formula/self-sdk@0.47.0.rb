class SelfSdkAT0470 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.47.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.47.0_darwin_amd64.tar.gz"
    sha256 "773271f7462a6282a0e103d642db145b0b914a9de9ced138f47e0cd2b4badbd8"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.47.0_darwin_arm64.tar.gz"
    sha256 "5b6fca68a6dde071cf3078833498bac5910d1da754615fb4f89f4f08afb09051"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.47.0_linux_amd64.tar.gz"
    sha256 "116d537707f34cdf15426a6e67e50ae0d85b111993f2c468e37e90fb500c4027"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.47.0_linux_arm64.tar.gz"
    sha256 "3a597bdd1bd1ea67d5554970d2ff4d41577bc16d7d3f4c510590a52be3d9eafc"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
