class ZktfSdkAT0230rc34 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.34"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.34.tar.gz"
    sha256 "e3c7a05322f779105dee07928e2dfd010967179beb19431d146f6b018cd79247"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.34.tar.gz"
    sha256 "bc19ffa402ae0c25ce78ad5c799bdf788b3847d7f57c85a0d33cc8cea7364268"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.34.tar.gz"
    sha256 "6de7c40933a8a1feef341c264b87c66b14f45d390a09a37d266a3581319e4767"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
