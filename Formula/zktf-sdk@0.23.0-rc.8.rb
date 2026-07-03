class ZktfSdkAT0230rc8 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.8"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.8.tar.gz"
    sha256 "4da6211548dde8d5aab9248b4ea626ca225d6438bb905f141933d1e8b51d9dc2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.8.tar.gz"
    sha256 "306686472f4c7fec2bcb23e6e0a0983fb3a6e8eec90905157fe6b02489c97c6f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.8.tar.gz"
    sha256 "2adadbc6f341875f8f39b391d272c9ec7a27a82f7d708bdb08d907e17028a5ee"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
