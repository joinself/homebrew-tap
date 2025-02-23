class SelfSdkAT0710 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.71.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.71.0_darwin_amd64.tar.gz"
    sha256 "41898dc5cf7c22781031e0323f980887828efc478718358bfe527955ea146947"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.71.0_darwin_arm64.tar.gz"
    sha256 "a60f4dd076928acbcd4b31f2281808b95c496f049e2daaeeb9619765fd3bea73"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.71.0_linux_amd64.tar.gz"
    sha256 "2d56db947ecbfc6b6c8d1a23840c282e1b81ecc34e368a9055ca762463553d7d"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.71.0_linux_arm64.tar.gz"
    sha256 "98b6b171b47254851cb5cf9fd31539305cadd2e5fa3de8c9e7fbe7547494fd68"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
