class ZktfSdkAT0230rc12 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.12"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.12.tar.gz"
    sha256 "06ad3ee6c7c9c57d9cb05156d8358ece85620d27ca8b1eb572baa9b0d4604ff3"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.12.tar.gz"
    sha256 "80637307df78a802719e94b293e4ab69229862a6720026170dd9ef8c66563a71"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.12.tar.gz"
    sha256 "06457dfc5a0e85ce0b41ef2c8805c463e07e67a215e97222d145036cf8911492"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
