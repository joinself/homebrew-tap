class ZktfSdkAT0003934db7 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-3934db7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-3934db7.tar.gz"
    sha256 "d358d581065132145970ca40ac0fb8f83a81675e258e5482618dd1b31c87042a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-3934db7.tar.gz"
    sha256 "147d2a83862e7bb50ef1669bf059f507d5945783fe7bef8c6ea204b5b058d629"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-3934db7.tar.gz"
    sha256 "f9142d4a65ecc1a40b038b5d950f700d89fcee84bac2c6df3bcc9b0f48bec457"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
