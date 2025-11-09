class SelfSdkAT085020 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-20"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-20_darwin_amd64.tar.gz"
    sha256 "c3ab6a23b8c09ccea3a224bb97a445d162a74d4594f080f8efafb8a9587230a4"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-20_darwin_arm64.tar.gz"
    sha256 "8e745eb692ac3baa64b9b987e5d4f6ae2f5420e13f60c1da03cf4e21f5c92464"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-20_linux_amd64.tar.gz"
    sha256 "9be5e002fa9f0ade6dd1278d7ca8042b15461546dfface1a9ba044f860f6fb87"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-20_linux_arm64.tar.gz"
    sha256 "fc3dddc58024e9fd8f32b37075b07339a4c56b963982dee7bc0d1f7f9101c8c3"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
