class ZktfSdkAT000b4e88e1 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-b4e88e1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-b4e88e1.tar.gz"
    sha256 "9345d6d95285e7d404677b3f796d62a2649e9b1a6834e8a5493405c391abb303"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-b4e88e1.tar.gz"
    sha256 "394820afe2a2205cb46710550183c432379c3a8088bcd1f88f1f4814ab62ff08"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-b4e88e1.tar.gz"
    sha256 "9eb5714b3622fec20fbf3e33b00653d37d68e82831a0bd595c17b9b57d111004"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
