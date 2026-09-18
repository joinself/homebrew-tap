class ZktfSdkAT0230rc50 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.50"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.50.tar.gz"
    sha256 "c5380948d31ea8e1b5544d97a3796de965870d5d1f48fa73d490f659085877ab"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.50.tar.gz"
    sha256 "96fd991e1b4e52e53722f7d5e52b97592f9d390c849ac5ae3924d22d06e8ae31"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.50.tar.gz"
    sha256 "66dd7571761d7f01bc0d48a2b44278e2ca82a1166b6ecd506753e6fea50f5eef"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
