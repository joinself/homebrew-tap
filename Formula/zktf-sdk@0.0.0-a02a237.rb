class ZktfSdkAT000a02a237 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-a02a237"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-a02a237.tar.gz"
    sha256 "e2e73662d96a7e8be6a72298d0387ecf2c463cd556d5861e17f84de333e6ad13"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-a02a237.tar.gz"
    sha256 "b4986ae724044e0a3a5995426b6e756a457665d33a23bb09e96e20c7677bc5e6"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-a02a237.tar.gz"
    sha256 "35fa70132eb265e0b444f0d0aa269fd099588de11d026285e4bf74ae762d643c"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
