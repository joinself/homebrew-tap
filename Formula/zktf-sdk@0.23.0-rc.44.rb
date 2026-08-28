class ZktfSdkAT0230rc44 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.44"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.44.tar.gz"
    sha256 "0f641bdc5147fed6d21e8fb441801a550a8b59079ab6096b4c5cecacef6a0ae8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.44.tar.gz"
    sha256 "386da1d0ad6b3a45131bb7a2100b7aa3c971e8fc8c88ba2f37840c730f390b92"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.44.tar.gz"
    sha256 "dbfbfb9e8b521ab767d9434e129cbbbbfdb9dff34358325fd9a751bab97b88eb"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
