class ZktfSdkAT000fe6d3e8 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-fe6d3e8"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-fe6d3e8.tar.gz"
    sha256 "3f61d09d278716e13f5a7a92699c1d597a51d5db43800eb23ffaab42b3dd4eb2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-fe6d3e8.tar.gz"
    sha256 "5f1accc4f88ee24d0899281c9f82d72614424f04f39843cec1755ed8839c252f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-fe6d3e8.tar.gz"
    sha256 "a47467ebd8cdbed86f50b4b03509f29ba962cfd8aa33fbf3eddb4699cf597d22"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
