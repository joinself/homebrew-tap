class ZktfSdkAT000563835b < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-563835b"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-563835b.tar.gz"
    sha256 "d34f71b183e593980ed77cb9eb6eef0acb89c9cfa14f9a975101c7ae32005e12"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-563835b.tar.gz"
    sha256 "bd569d4b526b2198d9a44c5d1312043a0c778ed1c8b2652356d4f9c0f1217cbd"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-563835b.tar.gz"
    sha256 "ec55d0e91036de9bff052f860c4d48d6c944e1c7456e2532f52a2e89bf27c9f5"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
