class ZktfSdkAT0005a0b584 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-5a0b584"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-5a0b584.tar.gz"
    sha256 "a3192891257979b10d65fa3739b9ea83a6ea1bde23f935b230bd301c02bf9087"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-5a0b584.tar.gz"
    sha256 "5fc7ca4271341f36eb6bf94cbd4f802667e40e15bde2fa0c2b2423ab4076655d"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-5a0b584.tar.gz"
    sha256 "04784473734846d1b91259a6ff534e5c47bb646a578e9209ab98af315d1d054d"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
