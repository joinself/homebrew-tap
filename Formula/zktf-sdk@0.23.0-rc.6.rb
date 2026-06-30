class ZktfSdkAT0230rc6 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.6"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.6.tar.gz"
    sha256 "1bc1f38cfa2b51bc8fd5f80e811dfc7625a622d2d320fc78b421c35e76012f7b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.6.tar.gz"
    sha256 "2309043e58f07cab31ee534f1356796d4f3786388e463609c4ed26b5ae146f30"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.6.tar.gz"
    sha256 "7a5389fa0f86a33ead2e2ef598d1aa2b86ef03e3ef48c2e40017b7ead0e1535e"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
