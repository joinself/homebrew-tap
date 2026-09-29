class ZktfSdkAT0230rc65 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.65"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.65.tar.gz"
    sha256 "7fb390f1bdb7171d81c0eb7e5a44f20fca7e4a4e7db8d5f02dffa9f0d97f0577"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.65.tar.gz"
    sha256 "a6332484906513705fb47cdf33a561f61e2af0e61d25fe16bd06fd42b1c7e375"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.65.tar.gz"
    sha256 "994251e1a2eb42c1f408a03118809e68709fbbde91cb1d4d41e896a814870026"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
