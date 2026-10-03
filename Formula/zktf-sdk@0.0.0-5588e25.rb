class ZktfSdkAT0005588e25 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-5588e25"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-5588e25.tar.gz"
    sha256 "d72534edf8f07aa64fa646533b68cea04ef8d340d4b006590663fdd5e0b535f4"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-5588e25.tar.gz"
    sha256 "c885bfea446a39ecc504ff723219e0a5a28be25a29612174ec356bb5fa980116"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-5588e25.tar.gz"
    sha256 "3bf8074984086d3cc5c772f28a766321f7d4f37b95b68b7a29157e8176f5f09e"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
