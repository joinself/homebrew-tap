class ZktfSdkAT0230rc68 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.68"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.68.tar.gz"
    sha256 "fce7dd7f8bbaa8493479b0f37ed58918757b944ea90f2a15b8a39af31be794ad"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.68.tar.gz"
    sha256 "7b8cf68d8e97486a95c0c24d08b4926974f3161aa26265868563565e16dc1de9"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.68.tar.gz"
    sha256 "10d03d1176b07c526fbfb1986ad67998e23cb5ffbc13559aae588748d9e26577"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
