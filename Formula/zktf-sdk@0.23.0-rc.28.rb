class ZktfSdkAT0230rc28 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.28"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.28.tar.gz"
    sha256 "6f090841c8189617c51f691e5744e5ba83ea2a2ea5a435177c8a389e7ece2330"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.28.tar.gz"
    sha256 "93f6efcfbccd7aecd9e0e78227a50dd4ed33de5906eda21f1b7d62570b9414e3"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.28.tar.gz"
    sha256 "9db01ec2a853f00be9e742df33022a0aeb505bdff0a16f8048e1718c0cd06068"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
