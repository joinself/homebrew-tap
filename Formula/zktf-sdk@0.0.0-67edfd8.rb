class ZktfSdkAT00067edfd8 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-67edfd8"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-67edfd8.tar.gz"
    sha256 "4f8fdcf4430db662918f8cfd6ef01f4685ce1d6dc81cba87915d1d398b58cb0e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-67edfd8.tar.gz"
    sha256 "884f885f1755fdf3680d5a6b7961ed23b05b0855c80fae197a09730b05600d82"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-67edfd8.tar.gz"
    sha256 "a54c209fb35437575f6a48695d39523c75d3f2ab115318f7537e6ef37fb36224"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
