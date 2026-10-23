class ZktfSdkAT0008741f40 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-8741f40"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-8741f40.tar.gz"
    sha256 "55396ca55351c76e7cdbb8e7ed54cad6a4edd20a64fe1d6d9a163673e010b098"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-8741f40.tar.gz"
    sha256 "60751f18aa471ad1a0379d986ec79a41a5a02087c6f622abbab18cf216805228"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-8741f40.tar.gz"
    sha256 "81309f051bedc782184d518c79364c1e2b4f56c879cc3bee49d2d773609bf9dd"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
