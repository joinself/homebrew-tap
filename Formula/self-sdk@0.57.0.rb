class SelfSdkAT0570 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.57.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.57.0_darwin_amd64.tar.gz"
    sha256 "4370f2f27eea450b1c873017886d23018801751ae15058cde670c0fdf34740cd"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.57.0_darwin_arm64.tar.gz"
    sha256 "684c37bf165f96400e650e93f173fadb13d02830c14710fad633837d7c08e6e5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.57.0_linux_amd64.tar.gz"
    sha256 "97fd7d8183b2d5d6b68750612ebc6c53cbf227a58f26937107f14eb4685c6c86"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.57.0_linux_arm64.tar.gz"
    sha256 "ea0b29e353c57434f75cfdea506f76618f902950f2d8b7f356204e9652eef921"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
