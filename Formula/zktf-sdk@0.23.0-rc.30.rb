class ZktfSdkAT0230rc30 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.30"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.30.tar.gz"
    sha256 "fbd24f978461b66f91fa13b73ebcfa4f5ba1a671774ca847c810a8a35a38cbe6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.30.tar.gz"
    sha256 "659c33fb66aab753563d16f1c49471f714ad80e60be122a87edb6d29b068d8f0"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.30.tar.gz"
    sha256 "fde228c64df8281412e5b95b92c71d3a7c8b48bb244e475392bce2ffc85ab04d"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
