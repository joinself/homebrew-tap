class ZktfSdkAT0004bfe8a7 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-4bfe8a7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-4bfe8a7.tar.gz"
    sha256 "062a7277fbe709ba855d520c4ad00f77314caee6f11e09cb06865984156bad30"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-4bfe8a7.tar.gz"
    sha256 "c96e5420afa1f4156234286a42c43c4b4b5ae06091872ff56ab4a2f064f937c4"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-4bfe8a7.tar.gz"
    sha256 "1c8d392c98297cabf33aecd702fe5684b2048f4778b7543fbf681ea2ecdb02b9"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
