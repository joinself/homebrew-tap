class ZktfSdkAT000d4136b6 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-d4136b6"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-d4136b6.tar.gz"
    sha256 "c53212f499cd3be991779b248ca9f7925df95076467c85563be2edaa16f1b997"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-d4136b6.tar.gz"
    sha256 "dd1098ec8be44faa29235fc9884020b48fb3c2d1fc167b4099e914632249dea5"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-d4136b6.tar.gz"
    sha256 "8295bdea7120918cb2bfc71e9a289a6b391b5dca16e726c667c479620cd0dac6"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
