class ZktfSdkAT0230rc11 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.11"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.11.tar.gz"
    sha256 "b67c50564422aea3388dcdf8d6a64a1c90c5e7dacc7176c519468d8c00261b5e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.11.tar.gz"
    sha256 "a5be2b1175bfe53e58f3f4187e267bd79eb79c46b58f22c374a5878754cab3ce"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.11.tar.gz"
    sha256 "8b097a20c3058c1e1bd6fb300ec8001e8c34f978146c9bd2d6319c7ed5b341fe"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
