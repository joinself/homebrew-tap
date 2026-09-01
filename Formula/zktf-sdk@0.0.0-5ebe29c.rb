class ZktfSdkAT0005ebe29c < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-5ebe29c"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-5ebe29c.tar.gz"
    sha256 "79251b9a96f4a55e888bd6a79d7bf6dad5fbb90f584dca4e76e6e2bb660c5ba1"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-5ebe29c.tar.gz"
    sha256 "021594658612e76ed900db20378c022cd1a8c13a5e68f1514a5cf517faa75166"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-5ebe29c.tar.gz"
    sha256 "68643786176d108b7dbe5e499b621f65be97dc9912fe4d9048a6f5055d3c535d"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
