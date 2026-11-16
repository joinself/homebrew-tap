class ZktfSdkAT0230rc101 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.101"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.101.tar.gz"
    sha256 "a4235ed256193702bae9a9943db6a381279f75146e9efa8a6e204e48d4823a52"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.101.tar.gz"
    sha256 "4f8fc3fa630438e66687f4a8f08759c7360c7bc9d2812e44d68da249dbed33a4"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.101.tar.gz"
    sha256 "ad1a83c76fe8a715ed420967efd23a761c2d32453e3b504e3f8300847859e8fe"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
