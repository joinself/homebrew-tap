class ZktfSdkAT0230rc105 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.105"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.105.tar.gz"
    sha256 "fc5aa47a15bbe47bb641af288fc14f2bfa3bc77eeea7bde5580c02a45616c0a8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.105.tar.gz"
    sha256 "da3df83bbf96c40751d5732c7823a7987422c35ee73a26a520e089ec28dec677"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.105.tar.gz"
    sha256 "6b0ff222bd18ad1a5f62a711ee325f0e8366525d7967f68a5271768f50bb3373"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
