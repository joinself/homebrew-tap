class ZktfSdkAT0230rc87 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.87"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.87.tar.gz"
    sha256 "073249563b8ae28c37312231569b2494ea3509d604e38b336a4a200dfedf46e7"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.87.tar.gz"
    sha256 "208b893560af3dc729ac35f0ecf48b08355196c203bdf7de7d4ae8932481eda0"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.87.tar.gz"
    sha256 "0cc90fe872065ee307909efa9fdaf8decdb782e6bae55ee0b1f76e9f4ba0502c"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
