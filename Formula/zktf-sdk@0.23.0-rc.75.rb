class ZktfSdkAT0230rc75 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.75"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.75.tar.gz"
    sha256 "3bab1987bdf3bbf4188256b5087c916a16e8596fabe3a834aba9b6e40c772080"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.75.tar.gz"
    sha256 "929b949308f8266efaca3bb0e90e80eddac53802d7567ba32cc9796559fca825"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.75.tar.gz"
    sha256 "16469730c6d846fbe240bc5cc1a309719ac99863089c0669b5ab636c79c27d4d"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
