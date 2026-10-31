class ZktfSdkAT00008f8d1b < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-08f8d1b"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-08f8d1b.tar.gz"
    sha256 "f41e99066845bbe70379fe53ef344ff6832a13c5e9359f25eb1d1e871ba5383b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-08f8d1b.tar.gz"
    sha256 "8f3edf2685765e07a13d02d76d6d4bc16f5913b4d5bd4f89bb8f4db29c06a715"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-08f8d1b.tar.gz"
    sha256 "b091b9f9f957311e178de455f3347f9a2a77a928999d37a5b1ef1157489e6802"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
