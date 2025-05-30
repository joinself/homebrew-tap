class SelfSdkAT0840 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.84.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.84.0_darwin_amd64.tar.gz"
    sha256 "ef83f346376fb92da5210ef4bdb9329711d89fc8d7ecb6b46b86ff1b50db5515"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.84.0_darwin_arm64.tar.gz"
    sha256 "7ef6b89469cd58fe1ca8df4cb3ae2cf2ef8819f5e03878342894e7b938444bcf"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.84.0_linux_amd64.tar.gz"
    sha256 "0b260a4d0687568fe4bed8ea20626259151a6a00be105e04d642ba6e147bb285"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.84.0_linux_arm64.tar.gz"
    sha256 "d32a6ea28ebf7965c9d256276118789a70ea23e113203437acc72e857baa6c4e"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
