class ZktfSdkAT000f5601c1 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-f5601c1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-f5601c1.tar.gz"
    sha256 "19618b1175fe58b29ea8fcf0eeb158ded6585b37f1422d993aaf240b7086b952"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-f5601c1.tar.gz"
    sha256 "459dd34d46229ba69ddbc468134dce10311b0cbb3aa31c16f8c6b9523c3307b8"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-f5601c1.tar.gz"
    sha256 "7c6b6fc7a2f9c108a7045f9e161bed3d20e959a2402c24ffffe82ea0092ae33c"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
