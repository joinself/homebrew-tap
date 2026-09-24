class ZktfSdkAT0230rc58 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.58"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.58.tar.gz"
    sha256 "7f3da811258fc56815a791e94ac5ab73f3242fe80a73b4eb2901a9ad7bd76b91"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.58.tar.gz"
    sha256 "b8cf8b8dafa982bfdc8d8fd7704f954402b0d50cb971f22838dc95efee0f9cf0"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.58.tar.gz"
    sha256 "eb2323030d0f6788b76c21c3f2c224b8c91895afe38e95c1cdbf6585a2edace5"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
