class ZktfSdkAT000d1cfdcb < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-d1cfdcb"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-d1cfdcb.tar.gz"
    sha256 "8029e6854c3fb0e0f576b769c3a9e38d649df95642e0985fec1c997bb2ede4da"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-d1cfdcb.tar.gz"
    sha256 "9fc76a4bfe2d4f072a65d829d848139dfb0056144606479a149a6309522f8e64"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-d1cfdcb.tar.gz"
    sha256 "05322ce938cc0a81238970530cd7779a13351e64a143c38d321126cedd91c40e"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
