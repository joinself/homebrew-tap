class SelfSdkAT08008 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.80.0-8"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-8_darwin_amd64.tar.gz"
    sha256 "6738c3a2b06362cb60bd0a2be54271327200f43c13b7eb81ae33e7c6d159eb94"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-8_darwin_arm64.tar.gz"
    sha256 "65dda462800a221b09424f7198b111c9089ab796c67184eb3ca8459659336020"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-8_linux_amd64.tar.gz"
    sha256 "1276eb0f55d782b819d131292d34f124ddd4e2a034d9415ca4676c003aae4cc9"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-8_linux_arm64.tar.gz"
    sha256 "54f033c4ca35656978cb484a7aab370a73b67a189acb40afff4b216b5f2e4a7c"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
