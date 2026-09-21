class ZktfSdkAT0001007aa0 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-1007aa0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-1007aa0.tar.gz"
    sha256 "e3f201e299e0e23b917e95c48a9a7ee8ebb1535aaa8a6ac39329c475bc28307d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-1007aa0.tar.gz"
    sha256 "75fa58957c2b24a65ed1263ff86ce1929205fb6198f5d218230ceb5ccf9d3cc3"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-1007aa0.tar.gz"
    sha256 "c80a4c66a893647194e2be66f04a65b7465ae4e35b0eac11ad6b8fe18810591a"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
