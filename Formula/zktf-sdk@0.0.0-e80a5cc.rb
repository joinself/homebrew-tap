class ZktfSdkAT000e80a5cc < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-e80a5cc"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-e80a5cc.tar.gz"
    sha256 "edc44efa7fee6cc9cdc6eab98505504260adc24d5ae432360b392a5bb10f2a48"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-e80a5cc.tar.gz"
    sha256 "6af89f46ab884ab09361355287288cfe10b8977c353a049c72997443b7ef95dc"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-e80a5cc.tar.gz"
    sha256 "6d4acbd097d290aed10c4b6a6782f8a0090a1a03bcf69a76765bc1bde03316cd"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
