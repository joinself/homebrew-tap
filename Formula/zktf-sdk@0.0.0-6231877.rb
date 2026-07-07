class ZktfSdkAT0006231877 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-6231877"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-6231877.tar.gz"
    sha256 "0d5dff422714af113f3f47a5a5bcd52b37c024e12f076b5d23c319f24a3a0433"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-6231877.tar.gz"
    sha256 "803d08d24d06f6bd5222fcfb90d03346e6f4c5c636813e3d5fa382f91e3bc915"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-6231877.tar.gz"
    sha256 "1cdc03ab3262b00c384039741f746b35d881a95ed9b6eb266058e6388292e5a9"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
