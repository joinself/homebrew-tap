class ZktfSdkAT0230rc42 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.42"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.42.tar.gz"
    sha256 "2dbc240778220e0da46ed4f274f7bcdaabb9c3883af7854bd6c2cd9146de52ef"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.42.tar.gz"
    sha256 "28a6649349be9dbaf7e52df5a48074c31f25742a139412db8ab1fc1d3ba0b0e7"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.42.tar.gz"
    sha256 "b3a88474bbb6829bf031c8c086b22fef7a7dc4e63a77ae307e53729ad65088b0"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
