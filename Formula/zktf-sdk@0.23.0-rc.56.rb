class ZktfSdkAT0230rc56 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.56"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.56.tar.gz"
    sha256 "85c84fad29468f5d8c13e981b3b760e46c132f373dd3af5cec55651718ca505c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.56.tar.gz"
    sha256 "6b76216e48a6fe864615d745e02c537cf61b8c329cbf1e2ab8015ddd5aca2416"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.56.tar.gz"
    sha256 "ec66372312e857b774599a4415f384b01da677b0074f577b62846eb9cbdd7c36"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
