class ZktfSdkAT00095856fb < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-95856fb"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-95856fb.tar.gz"
    sha256 "083fb069d7c386358f67d2165e754656b68cf83dbc483fcdb64a366e5c31a94e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-95856fb.tar.gz"
    sha256 "0724f7c33bd548a4501f2d8f95beb375b5326b353d927b0216ce10c1bbafdfe7"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-95856fb.tar.gz"
    sha256 "6e896e0094d4b4c2d1d86ae8f860d8bfb09122926309a52fe8c9e8bc9a870d73"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
