class ZktfSdkAT0001b6e181 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-1b6e181"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-1b6e181.tar.gz"
    sha256 "294f10de2b8afbcbe02b39002c95917486283f8ad74526645acb2426446c599e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-1b6e181.tar.gz"
    sha256 "430861d4c5700524ce05af42cbb3fbccfedb1cc96e195be598dba85a9b399cff"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-1b6e181.tar.gz"
    sha256 "a69aebdff0c80dec9bf15bbc2d198d006eb70e673987d7c1e870a74d7903a85d"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
