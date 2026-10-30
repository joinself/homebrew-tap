class ZktfSdkAT0230rc96 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.96"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.96.tar.gz"
    sha256 "3864860130f825ec73525e63307bcf9f5a9695f35f97055bffa20fe2b295ff19"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.96.tar.gz"
    sha256 "d5be94067cb9748e85285e84f3ba3bc252194a4c576ef91586bec119caff06cf"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.96.tar.gz"
    sha256 "5a686759b275856faac359374b1766766a35ff06bade3c1094fcfc84d1d5b810"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
