class ZktfSdkAT000a47584c < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-a47584c"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-a47584c.tar.gz"
    sha256 "a83d0f8cdfd9cd5608b7df2efe7d6e3412fdf4f6047f67bcc5182f6b258e4dc0"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-a47584c.tar.gz"
    sha256 "06803dc08d5cbb22cc719e44efb932111f7c104c6735c133c68d0c3272146a30"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-a47584c.tar.gz"
    sha256 "e2ed98c046f38b0ee81416c432dc3e65265c5b07ac99016f7612cf43ea7c0127"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
