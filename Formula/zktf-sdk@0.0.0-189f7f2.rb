class ZktfSdkAT000189f7f2 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-189f7f2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-189f7f2.tar.gz"
    sha256 "820072ed03cff73e2319ec0dc4c102d015c783e8c27b7926e87eac0a723b758e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-189f7f2.tar.gz"
    sha256 "325689dd8d0d3f1dfaf284ea25f81864d1e127e100456eb27059ffd3adf6eaf4"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-189f7f2.tar.gz"
    sha256 "00de19a18d36055ecf51b04971d9c33d55e2617e914482d6c9cfe9f208bfc6ab"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
