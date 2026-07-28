class ZktfSdkAT0008acc202 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-8acc202"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-8acc202.tar.gz"
    sha256 "0c261c3b78d11c3ed01da385cdda1a429810af113f045c8ef17c29544b8986f9"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-8acc202.tar.gz"
    sha256 "9d0cf4319e628a2339c55ba1043a41a58e3cb1b1b51512e762fed6d77069ebef"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-8acc202.tar.gz"
    sha256 "b8c1ee3909915082bcf8c527ead68bcab47ad511c23e488fbbffa169644067d4"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
