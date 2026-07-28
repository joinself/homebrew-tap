class ZktfSdkAT0230rc24 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.24"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.24.tar.gz"
    sha256 "074b5f38d7026b9f4dbf96b8f58f45f3d0b4fc2f138828ec5b224682c6b2ee05"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.24.tar.gz"
    sha256 "9354779c1a0b2157560faf0b48757b55528c28fd7e55fe147e72d4d54226ab9d"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.24.tar.gz"
    sha256 "5d334d5f47fe6d4e9434fc9126c3bc5f16359e0d5b316c641c8a4b2f86dde4a6"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
