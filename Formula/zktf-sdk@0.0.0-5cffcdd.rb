class ZktfSdkAT0005cffcdd < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-5cffcdd"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-5cffcdd.tar.gz"
    sha256 "8c8c3c01d2a4a868aef452c8e07268c336bda25d0ff115d5942085c1235aace6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-5cffcdd.tar.gz"
    sha256 "1ee97cf2850ff2706429e35be4f8e884c714aa5b7a847e90d8ce4e94bf374e87"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-5cffcdd.tar.gz"
    sha256 "c0fb46a8cd37c031d800c74347e304a177ff072b557a1db0359863aedcbfa4ac"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
