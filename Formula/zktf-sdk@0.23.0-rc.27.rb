class ZktfSdkAT0230rc27 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.27"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.27.tar.gz"
    sha256 "3d63b62e0bae89b614a74ab3fa7b6439b7739e578854afef2c76db7cfe2e6e8b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.27.tar.gz"
    sha256 "40e108684cf0d586aa59cab2506798bf577c228708f12f0d9a3b48ac536a35aa"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.27.tar.gz"
    sha256 "525b511e45031750409892b172933d3beaadd385c7222f4c4cef4bee97500030"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
