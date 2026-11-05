class ZktfSdkAT0230rc98 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.98"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.98.tar.gz"
    sha256 "6ee9585e6713739d026f39275a13b77b9c64e29f3da46e3ed9880f44867cef15"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.98.tar.gz"
    sha256 "f471d926e44be88b88c2b91cc93f53ecec463acf8f9e92ea3a192bbe6c341e0c"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.98.tar.gz"
    sha256 "04c0440ec12e63c508e9da330fe33c3008c87f64c5ea3d4dcfb335857adf96ad"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
