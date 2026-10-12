class ZktfSdkAT0230rc79 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.79"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.79.tar.gz"
    sha256 "ebcb374b8252cce70b31f744a939fefd881a6da65ca2f0440ece2e3f5d9757de"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.79.tar.gz"
    sha256 "d28a3e340e2cf2783ae1dc66399de5c929ee10dac5ec2c3e1fd00b5fdfb5fad7"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.79.tar.gz"
    sha256 "ee37c488eb213b73a89b336ec2e8362be3a60465a01b4783a903ae3be1fba600"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
