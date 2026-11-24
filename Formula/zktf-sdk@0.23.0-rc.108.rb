class ZktfSdkAT0230rc108 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.108"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.108.tar.gz"
    sha256 "8a90aaddbed49f427ee592b59d69d2928a8919ecb83eb15cbb3315236c43d0c3"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.108.tar.gz"
    sha256 "978faa69698490042f0bc582477e2e2534122aaa5ec8fa9e9973c46705f20dce"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.108.tar.gz"
    sha256 "dc6bfb74687d9f901e0c3b7f5e252b1439292fca3eb47ead70d97062d9018eaf"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
