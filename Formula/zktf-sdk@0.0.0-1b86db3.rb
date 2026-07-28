class ZktfSdkAT0001b86db3 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-1b86db3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-1b86db3.tar.gz"
    sha256 "87e9675b6778366c4c48ec7b726ae8f643584b672baec827ec3c00c95cae652c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-1b86db3.tar.gz"
    sha256 "1bc5a1c4610167479bcaecfa60e7f095903d485f2c1043ec40ae4330910fa25a"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-1b86db3.tar.gz"
    sha256 "67f30522ee8160760b21972ff726fe93636ec30e43cae2b7e7a9fc491b53cfbb"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
