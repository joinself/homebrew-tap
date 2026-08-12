class ZktfSdkAT0230rc37 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.37"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.37.tar.gz"
    sha256 "fdbde6601fa7550f17183c45b4550c19e05732fea6d7482794cbec95e36b6cce"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.37.tar.gz"
    sha256 "11628eef9e3e607e852cf349baa92e181c0c1c22e34d52563bb296f8cacaa919"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.37.tar.gz"
    sha256 "2920b49321670f5392a12b16d8bb5f3ba2c1429f0df3427633e07653e9afb5d6"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
