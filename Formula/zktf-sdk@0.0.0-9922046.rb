class ZktfSdkAT0009922046 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-9922046"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-9922046.tar.gz"
    sha256 "08060f110dd5ccfb06076870592539077ccfed455ad67d4e7ea22c3c5924967c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-9922046.tar.gz"
    sha256 "29b27397f41f722e726de7082bd12dbb980c9b2f5dc0b7913cec318168029a1a"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-9922046.tar.gz"
    sha256 "3c03ff6c0e798470ea446e3512b673c8512162f0a1b8090cb8172a3f121ef96d"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
