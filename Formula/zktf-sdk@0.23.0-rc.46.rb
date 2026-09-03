class ZktfSdkAT0230rc46 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.46"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.46.tar.gz"
    sha256 "5c8c48e930d2c19553216bf95030464e57a3003eeb56060e30c4f831c90f8bce"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.46.tar.gz"
    sha256 "213acae0b86a18b2a3fde9f9a4d5731227d37dc7decd6bbb2e20ee9bdfc4eb2e"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.46.tar.gz"
    sha256 "4209cc10782e8ecef235b8922dcd19edac0782075ffe5162c0b340fd78b57323"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
