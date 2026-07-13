class ZktfSdkAT0230rc19 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.19"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.19.tar.gz"
    sha256 "72417450a659baa16ed14a901b03adccaab6291dffe16910d6721a0b1646c758"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.19.tar.gz"
    sha256 "9be0e5a1f16ade961f02410687cd08f522aba4ad7ed79219c5b583af5f8465b3"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.19.tar.gz"
    sha256 "153ce0d7c5160eca0d9da571d848d460b2999cea5d7bf7880b974f9881b6feeb"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
