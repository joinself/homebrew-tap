class ZktfSdkAT0230rc77 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.77"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.77.tar.gz"
    sha256 "c5199479eefc1edd3f71e8b70b5a78da6d214d91eb8417d17f9fb4befbe5be56"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.77.tar.gz"
    sha256 "69db03cc54ef02bbe4a580d07da683656de2217295abdc3a97af43c3f50f1203"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.77.tar.gz"
    sha256 "ee966cea61d2aed3c1574b93a0e245dc219d59e44c3b6bb8e549967473bc3052"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
