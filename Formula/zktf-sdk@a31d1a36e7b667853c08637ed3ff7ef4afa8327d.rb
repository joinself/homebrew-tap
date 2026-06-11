class ZktfSdkATa31d1a36e7b667853c08637ed3ff7ef4afa8327d < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "a31d1a36e7b667853c08637ed3ff7ef4afa8327d"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-a31d1a36e7b667853c08637ed3ff7ef4afa8327d-darwin-arm64.tar.gz"
    sha256 "56f4251a64f5e39018b793907f73bba794e8a3252eef1b9a22c9d12220ffb4e8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-a31d1a36e7b667853c08637ed3ff7ef4afa8327d-linux-amd64.tar.gz"
    sha256 "c91ca8642de0876aac3785da9097c72f84c3515826a19e8653b686e3d165d3e6"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-a31d1a36e7b667853c08637ed3ff7ef4afa8327d-linux-arm64.tar.gz"
    sha256 "33440edfbeac8749b4b101f02cd994f8421a7f31c708675f3a56b5f6983a6454"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
