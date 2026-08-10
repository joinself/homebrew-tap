class ZktfSdkAT0230rc35 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.35"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.35.tar.gz"
    sha256 "4cf0a345b335b100c31178bd8cf184cfb1a7fe59001a6972e0a012dceffb3902"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.35.tar.gz"
    sha256 "cc84a2563911c8613d92249f568c7d5819db907b8ac04f448d7f3700e775e818"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.35.tar.gz"
    sha256 "0bda9dbddd0a3865959b97081de42c346e2885c570ec46b844d05e4e9de2e2e0"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
