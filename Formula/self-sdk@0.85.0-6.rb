class SelfSdkAT08506 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-6"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-6_darwin_amd64.tar.gz"
    sha256 "4ddbf2a0c67d5835dd9d2cc361f9aa01653f80d45745ce0a63980a67790d6d6a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-6_darwin_arm64.tar.gz"
    sha256 "e3351d36c1be04c9a07f646ccd95713e084d551f13d60d7e8f9ce68cfaeb11f6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-6_linux_amd64.tar.gz"
    sha256 "fe24500a6a8cd4ef311711a81f7ab9839bce53b92adde0f16e225ee5df0ffed6"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-6_linux_arm64.tar.gz"
    sha256 "0c49ccdc8553bcd59cdc39440210b0ca8c4efa8d585dcdd167f1ed20a3537b6a"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
