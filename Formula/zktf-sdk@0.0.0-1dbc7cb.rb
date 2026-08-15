class ZktfSdkAT0001dbc7cb < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-1dbc7cb"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-1dbc7cb.tar.gz"
    sha256 "d09d138656d473428e788edf2a8ad668a8f813770fef865f551e5e9954d1a36a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-1dbc7cb.tar.gz"
    sha256 "5eab737ab085ed0f70acfc7fd7d4ec2b1c26cd20af9a1444ca3e6d4a1b39f6a6"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-1dbc7cb.tar.gz"
    sha256 "617d3a7d010bef007833e9d90fd55c2f64db5c14b4cc13202c6981dc2a33b729"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
