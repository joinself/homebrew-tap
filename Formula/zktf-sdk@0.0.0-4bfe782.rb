class ZktfSdkAT0004bfe782 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-4bfe782"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-4bfe782.tar.gz"
    sha256 "7adec2f5a0de505b7e4b546a3cffe525c2c60b8c641f51efc4b07d9286d66bc1"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-4bfe782.tar.gz"
    sha256 "d89084ab9e90dcba6445cd624bf32b1ae1603692a72b8d250a9cc3f8f2021b2d"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-4bfe782.tar.gz"
    sha256 "51688311db5d8a68eb53f577d7d6d5a11cefe5a170696ad14e2d1670e9ef285c"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
