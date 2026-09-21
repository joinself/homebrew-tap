class ZktfSdkAT0230rc54 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.54"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.54.tar.gz"
    sha256 "53046ab5ffd591ab61755ead09d1d804b690e16feb8b544187d8ea3cb4176e74"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.54.tar.gz"
    sha256 "7088834234e21ebe542c1e86c86810893232f9354b9cf552cda819415ea9cbb2"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.54.tar.gz"
    sha256 "88ede80a55b2baef0a02dc52ca706731ab454e0318ce9fe956acac824d92c01f"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
