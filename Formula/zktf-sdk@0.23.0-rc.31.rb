class ZktfSdkAT0230rc31 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.31"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.31.tar.gz"
    sha256 "2e5184c16804381f709cae7a39add34b8a4449c29ac9d1dc3af63454b45842c7"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.31.tar.gz"
    sha256 "ad65813a6d357bd7ad69cf78bd99f64684ea8c5111ebade74cb2c7fb51020b72"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.31.tar.gz"
    sha256 "d5a194842bad68b96f3382cacb18d93e26a629a7dd7ea269d7e9e4200f3a520c"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
