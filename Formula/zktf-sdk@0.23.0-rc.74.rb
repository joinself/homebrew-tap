class ZktfSdkAT0230rc74 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.74"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.74.tar.gz"
    sha256 "7e0f8c650d704910b23a745fabfab36ac9cfe8dc40bf5d4001cd751a3f5a7912"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.74.tar.gz"
    sha256 "647d13d65cc7923124b13fb4db8bffc7d1f4d6a82dff008c21127e0615dc2f33"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.74.tar.gz"
    sha256 "d9c09c0e9372cfdaee9e851a93a481bb51668d5e90c367b7c93ccce2627127d6"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
