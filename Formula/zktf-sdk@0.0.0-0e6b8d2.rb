class ZktfSdkAT0000e6b8d2 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-0e6b8d2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-0e6b8d2.tar.gz"
    sha256 "9873055fcc8ea9d8421f6b120bbabec1f7fe888ecf83817d9e051e3486118c40"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-0e6b8d2.tar.gz"
    sha256 "1dfd446064df12835f707378eb61233d41f424b6817b4f448604e569e16ba6d2"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-0e6b8d2.tar.gz"
    sha256 "47ffbc134bc3f2b8f8325f6444e25397eae96cffbc0446690854d5de88f12114"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
