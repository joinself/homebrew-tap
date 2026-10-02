class ZktfSdkAT0230rc69 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.69"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.69.tar.gz"
    sha256 "5eff912975d845e2bcec411c05751d9ee0f4b5f2efbeed04ab417dd012721381"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.69.tar.gz"
    sha256 "1b446b8f00ef46c68f04d776ced3c248a7b6d011c07f5d0f7d2fb2c5fafdcd0c"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.69.tar.gz"
    sha256 "e8c0f7c48a4d721afb622fb76cd8bade26db2be7043ec16ef8ed7b41de91f96b"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
