class ZktfSdkAT0230rc80 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.80"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.80.tar.gz"
    sha256 "922f38df65744ce0b8fd477d5e575f98d42ab7005abeb80c1f94c84ff4b3d14d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.80.tar.gz"
    sha256 "e468a62b566f88309664dcb0be5d0cdcec3549befd77653fb6517a22fd8e7536"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.80.tar.gz"
    sha256 "86ddb2b5052adb845a7a80575c1187f538af27cdfd27a91dc423e1cce7e7e01f"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
