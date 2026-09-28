class ZktfSdkAT0003c01da1 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-3c01da1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-3c01da1.tar.gz"
    sha256 "2e601fc484f909e94962ab7db9cdc26631d36cff9b3a408a1ec4603997231446"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-3c01da1.tar.gz"
    sha256 "99d89c48a56dcbd237fb5302aaf06c5b6e75ad4a8f612e43d11eb8ea9795b348"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-3c01da1.tar.gz"
    sha256 "eb59406415509d06c0c6fdee83390fbb069062f7ecf256160ffef1fac52340f6"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
