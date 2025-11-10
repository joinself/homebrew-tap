class SelfSdkAT085022 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-22"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-22_darwin_amd64.tar.gz"
    sha256 "8cfa1e87d3e161aac159b7ca5ca1bda1a02f0b9468d8b4a123987e69d1cb4df6"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-22_darwin_arm64.tar.gz"
    sha256 "ff69b9dc4ceeb22b30d193d20b027de779630ba59c4003720d421dd9663d0d50"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-22_linux_amd64.tar.gz"
    sha256 "6286b4705d9c983cf391ecb82af0b041a776da529f8bd428a29ba10d089b5f8b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-22_linux_arm64.tar.gz"
    sha256 "05bbd6f38f1ec4dd1201b17d07ef1aaf21dc4f413a3753754b5f9413e61800a4"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
