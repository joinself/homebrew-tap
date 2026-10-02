class ZktfSdkAT0230rc70 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.70"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.70.tar.gz"
    sha256 "a25d1dc1bdc824d09e381400dc0509db2c75bce36922e2f8e2a73ad993f5f717"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.70.tar.gz"
    sha256 "2e01008c5ffe08ed5e00b7993f87815df645bffd074cb40aeed776c1b53aa046"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.70.tar.gz"
    sha256 "f5954191ac08ef1efc19fa3f2c34c822defb97217eae174b62c0dc578b7d95aa"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
