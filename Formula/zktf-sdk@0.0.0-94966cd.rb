class ZktfSdkAT00094966cd < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-94966cd"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-94966cd.tar.gz"
    sha256 "0037b67e95a2002b1b23f2ae75be5156d4cd269d45c67f1002ad73a72c59cb54"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-94966cd.tar.gz"
    sha256 "bca12a706962d1a0c76c9f7ae659a516d44ca16a18cfe22bf974e8f00fb11797"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-94966cd.tar.gz"
    sha256 "9e22ed20a9373b8a5e9251323fdd793c0cd53a630423430eea82db1603c52530"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
