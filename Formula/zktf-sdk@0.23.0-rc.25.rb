class ZktfSdkAT0230rc25 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.25"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.25.tar.gz"
    sha256 "daf6c48c83d22ce75829819dbf7a31edc1b651a17185fdefe002b2d98e1b2f2b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.25.tar.gz"
    sha256 "f09365d188f249307339104f92b72fee8324748539acc3928d43667f5a84dda7"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.25.tar.gz"
    sha256 "e4f5c832d053dfd4c43f1f733875b3b608d7417533483d5d1cadd83abde8a441"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
