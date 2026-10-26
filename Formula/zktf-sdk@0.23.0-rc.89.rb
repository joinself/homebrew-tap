class ZktfSdkAT0230rc89 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.89"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.89.tar.gz"
    sha256 "1492aea7c493d6e170c3e297c2b62afb5058dbd7b1dded94c4d20f7619a76fa8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.89.tar.gz"
    sha256 "340dc4d9ee6f6dddd1af95c797b948f5f9dc763949c3f7c4cbed03e129c0644b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.89.tar.gz"
    sha256 "1d820034bf16d2ad6d52b2c2629aa766f22a95d0e5abe48d1cb4ffd6f8d3466c"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
