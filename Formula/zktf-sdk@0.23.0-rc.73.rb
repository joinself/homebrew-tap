class ZktfSdkAT0230rc73 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.73"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.73.tar.gz"
    sha256 "b145cadd4d1927688528cf9aca0c5d244118be94c25ce60b51d2101c1dd2fdf7"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.73.tar.gz"
    sha256 "08d9ad2a064c8f76862b39e32db7285f79dfdd4fcc958c78548c92242e377c70"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.73.tar.gz"
    sha256 "d3c9a114b126505f330e906b134ba15893994702c17f06d7d176287b28cb28eb"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
