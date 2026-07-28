class ZktfSdkAT0230rc23 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.23"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.23.tar.gz"
    sha256 "fafc33361f5957dd1f6800a3066e8b8dab72a72d38785f81932f1d86c20d6faf"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.23.tar.gz"
    sha256 "2e5ada44e5bf5305bc23ed578d96219fe9c172d74c6ca3269314c155f4ac850f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.23.tar.gz"
    sha256 "7145c1b32ca80160bfa76de0493a48e5f4f15a3d949b6011f5d48d2f25f16aa6"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
