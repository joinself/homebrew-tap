class ZktfSdkAT0004066b6e < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-4066b6e"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-4066b6e.tar.gz"
    sha256 "66d751c0d8e207267be8dbfbdbdcf791a3208dfbaa68d82ffd4aaa00d513ba5c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-4066b6e.tar.gz"
    sha256 "1d2fc9006db12cb5f9b45335150893f4b578cea2e3ef9946f876fddafb8d7e48"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-4066b6e.tar.gz"
    sha256 "35af552f131ad250a22254a2850e735696c4261e17383f62ff7cd6823476c175"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
