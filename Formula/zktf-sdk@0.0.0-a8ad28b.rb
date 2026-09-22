class ZktfSdkAT000a8ad28b < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-a8ad28b"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-a8ad28b.tar.gz"
    sha256 "45b183c0ab668d83ea9c36b80724ef049f9fd1b90e8fe1eb38f7d0f357bb0acd"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-a8ad28b.tar.gz"
    sha256 "3a2cf22916517f0a1347f35ca4a2831ed0759e8f0a2963df44a1f7c03f4ab1af"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-a8ad28b.tar.gz"
    sha256 "eee08c232fbd0e97eb2ef370da639df196342a3269bbd27339365364e56d0852"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
