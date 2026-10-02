class ZktfSdkAT000cfc1787 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-cfc1787"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-cfc1787.tar.gz"
    sha256 "206d3d8d49ed58b8703bf52c738a692048cbc9587d99229fc8d43730fbb347b6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-cfc1787.tar.gz"
    sha256 "1280345655d19548408b3072867932d6af218a96a30b1e9c2c3251fadebf9118"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-cfc1787.tar.gz"
    sha256 "be0c02859225a716b0910f478a01e8ce8acfa62e7a36b5d71a8d3589c2238025"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
