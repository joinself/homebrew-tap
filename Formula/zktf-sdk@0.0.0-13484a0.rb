class ZktfSdkAT00013484a0 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-13484a0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-13484a0.tar.gz"
    sha256 "275f6c6d203628babb429944132dd33eb8ac1c3bc1be3fdc2384363e693e4ac3"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-13484a0.tar.gz"
    sha256 "447881b2d33190bfa301850c3f24f75bacc17a653d41185fbef7b3ecf86f4b8c"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-13484a0.tar.gz"
    sha256 "a0fa989cf927ce45d82c7e3ec061998a22e5d12d1dbfd11490fa56316cfe6b25"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
