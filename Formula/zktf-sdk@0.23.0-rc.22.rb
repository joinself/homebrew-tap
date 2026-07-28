class ZktfSdkAT0230rc22 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.22"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.22.tar.gz"
    sha256 "f7002c01fdce1a22bb04b912695fb5c85f051b3b60b09f9f2fac83094544690f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.22.tar.gz"
    sha256 "b27dbeb0395666e6c0bf69a5787a1fdf593bf99d085cc5b213e9270d4c92122f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.22.tar.gz"
    sha256 "dc292f7c03bb7d24c979490042f5af4c093b5acd52ea2250a7311bb3e1251f5f"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
