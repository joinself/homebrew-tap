class ZktfSdkAT00092341cd < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-92341cd"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-92341cd.tar.gz"
    sha256 "8aac7ad8e1918d73b217677cc084ea6bb020d9a558b5ba74e0a720ee8d35c137"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-92341cd.tar.gz"
    sha256 "5b2ccae18beed34a28429cb3e0dd9cc8b563e7daa65c51ed5a096effa831d179"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-92341cd.tar.gz"
    sha256 "0bf200a953822ff2affbd96afbc759cf95b398610bf3b8fe690a4273af9f080b"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
