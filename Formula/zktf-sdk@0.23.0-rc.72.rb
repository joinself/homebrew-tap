class ZktfSdkAT0230rc72 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.72"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.72.tar.gz"
    sha256 "30de502fffadc44862089625a57020760875218842f18d378a7fdc2040e80843"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.72.tar.gz"
    sha256 "e13d2ed33151a54ce2580fcdb75c6dac684af2527b57b1e608464ecc7ce610a0"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.72.tar.gz"
    sha256 "ed6b8182373cd406e06a1f8d09b0ea576eb3ddafb48f1337ed89cb116686251e"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
