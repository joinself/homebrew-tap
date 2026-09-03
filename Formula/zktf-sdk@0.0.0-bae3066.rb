class ZktfSdkAT000bae3066 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-bae3066"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-bae3066.tar.gz"
    sha256 "48abd286e878b474af9d16cf212de99864e82c295daef75b54177378865679d6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-bae3066.tar.gz"
    sha256 "4d15e01cfbc9f2c8c814ca1ea444aa1989c049011ec204dd8e8124e4c3390c49"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-bae3066.tar.gz"
    sha256 "669237c691e29343fa527e526518d39f334aff98a0989527299b8910d0cc5210"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
