class ZktfSdkAT0230rc102 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.102"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.102.tar.gz"
    sha256 "4c48f10c85edd625e01b1aac2c815a2d5cec61f866213525d7229e699e2ed77a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.102.tar.gz"
    sha256 "6420ddc79865f3fbc4a20f551897ab821147a26124f53433a0542e9e4ddf38d3"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.102.tar.gz"
    sha256 "3994ca0d73df0594d074907d129f24eef5486ab47cfb72a6e518c92f278f100f"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
