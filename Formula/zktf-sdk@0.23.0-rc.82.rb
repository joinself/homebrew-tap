class ZktfSdkAT0230rc82 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.82"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.82.tar.gz"
    sha256 "01262f6b283219b292d7b7de4f5f7ba30ce080e0daa2535c4555023a40c98965"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.82.tar.gz"
    sha256 "3fac03edaa8493f1df286335657ed76cf988cc7fe4411b418b5a667372a558cf"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.82.tar.gz"
    sha256 "ca2c18b4180398c0759cba49dc6135e589643cc43fb6863f26621e64839293e4"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
