class ZktfSdkAT0230rc63 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.63"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.63.tar.gz"
    sha256 "921872a72b53c69cadf30888880aa088a7e078b8e834cd2086ff521fa649f828"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.63.tar.gz"
    sha256 "30ab48495d936e1bd5c41ed255ae524d9129b574a21fc2936730b2bba5566a96"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.63.tar.gz"
    sha256 "5f3140a9c1bbdb8ffecb359af52c6e04e79df9a5b7b01d0932fcec063ec574cc"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
