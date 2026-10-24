class ZktfSdkAT0230rc88 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.88"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.88.tar.gz"
    sha256 "37aa7143d51f0bfc9ca2741fb88f703869d52d05d23ca0cd5f0d1fbab5ea6d30"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.88.tar.gz"
    sha256 "9802f3388b5508825994f108ede6d1b6f14b3dd7e9e106afb7e51426af19321a"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.88.tar.gz"
    sha256 "ec850b6f195b4f50b19ad1e6848640c98b1f8301b7eada57296ecf9ec6359c65"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
