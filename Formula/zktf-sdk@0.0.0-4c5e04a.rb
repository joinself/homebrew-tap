class ZktfSdkAT0004c5e04a < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-4c5e04a"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-4c5e04a.tar.gz"
    sha256 "c5c4820e1526a87837f0b6993fefde59da75051540e6451a6593cbb3f0327ea9"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-4c5e04a.tar.gz"
    sha256 "05a49dc01666d6cd4a0438cc983dff58f5d61fa25d7372a471c26c9e155c9129"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-4c5e04a.tar.gz"
    sha256 "0b02a2079328299ca1d80d0a332848397091ce58af8243bda25f7c15b2471260"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
