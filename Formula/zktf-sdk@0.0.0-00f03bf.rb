class ZktfSdkAT00000f03bf < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-00f03bf"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-00f03bf.tar.gz"
    sha256 "5b8643e9321be54eddf6acc889db916d44fdfbef714ef6bc17b5feebc7f58903"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-00f03bf.tar.gz"
    sha256 "2b36dc024adfd91b08a4e26227cfac4f54f742d0ad1abccccfdc5142c083804c"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-00f03bf.tar.gz"
    sha256 "b98e2c7d46039488df0d723db8931dc47921033a0ef5de3d6852693aae47ab7b"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
