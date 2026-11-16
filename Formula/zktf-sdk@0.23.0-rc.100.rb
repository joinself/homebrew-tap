class ZktfSdkAT0230rc100 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.100"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.100.tar.gz"
    sha256 "2705afaf6899ff5b62427eef9ca5a788001a67381ce31f7eaba7677bcc920a43"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.100.tar.gz"
    sha256 "274fa5861229f52fb9e664407284e3c1ddd5cbdfccf30e56709d797306a102b0"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.100.tar.gz"
    sha256 "8925b7c39a733ed425063a2780b59e4cf51cfc546f3dd0729709cec81497f5c3"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
