class ZktfSdkAT0230rc36 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.36"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.36.tar.gz"
    sha256 "d58cb8bbdef0cef6075bb6337c98afb77623882bd0a692fc7cfb1652a4823147"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.36.tar.gz"
    sha256 "fc8d49cd5c3f682b3a0480072299278b5a7bc4900b433f15a64e14f419c8ced7"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.36.tar.gz"
    sha256 "36a84f949d66a31f7a247c309d5a429588d4154b1ea34944905cf0f863eb4983"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
