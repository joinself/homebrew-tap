class ZktfSdkAT00066c5951 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-66c5951"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-66c5951.tar.gz"
    sha256 "24e649816124c9dd1eb7c81485b7c4ff9178df66552e267b8596827f71cf0b9b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-66c5951.tar.gz"
    sha256 "d86abbe7051255a26bc9d31c28a517aed880834f9c2d262f9cbef625ffb25717"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-66c5951.tar.gz"
    sha256 "6bb753a89c0ab1f4008ea6d571e76acf9e4e3068d1857bd18d1bde5b73c2b73d"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
