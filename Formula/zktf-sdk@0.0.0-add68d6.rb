class ZktfSdkAT000add68d6 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-add68d6"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-add68d6.tar.gz"
    sha256 "873e07d7030bbf9a60872535b4db6ac032f2d12582910b9301caff3b656ee5dd"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-add68d6.tar.gz"
    sha256 "af05533abe8e8a15d1f9e2e7a56d2a3b17588a8f8481fbdf3fab3640831140c4"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-add68d6.tar.gz"
    sha256 "bf5caa3335df5367e3632b60f05a4710ab893f2fcb3ae71d937aaa47d8951dbd"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
