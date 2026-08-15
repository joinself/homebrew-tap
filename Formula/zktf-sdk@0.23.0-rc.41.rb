class ZktfSdkAT0230rc41 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.41"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.41.tar.gz"
    sha256 "c8c0d92f7341645cc321c0c29b3cc37ededa2daaa546a743779d9f4f6f88e799"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.41.tar.gz"
    sha256 "55ab0aa0b8f8d9bcfaea4917ffa3f2fdaf35e3845c02f2f4eecf81515ccd6061"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.41.tar.gz"
    sha256 "60ade3166d475bf153598b830db5a10785c6688365f1b904e5aa4c56fe9c0b42"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
