class ZktfSdkAT0230rc10 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.10"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.10.tar.gz"
    sha256 "3ad2f5c7f5cd45c334fe489f3c66b739880b2a9070e33e7661cc1384ee18ddd3"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.10.tar.gz"
    sha256 "1930c5f93912a22db0acc5ee8c93c30da93855487343239aa607fb343d1ad7f0"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.10.tar.gz"
    sha256 "1976cce0b39179be220feeb820d32ccd3d5f47c890f747666a5a6dec618dbf05"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
