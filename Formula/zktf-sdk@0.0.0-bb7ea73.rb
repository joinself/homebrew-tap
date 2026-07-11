class ZktfSdkAT000bb7ea73 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-bb7ea73"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-bb7ea73.tar.gz"
    sha256 "05bb6a29c0740deca16180b37a43596243a5c5da8a0484e49f933a7a4a0858fd"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-bb7ea73.tar.gz"
    sha256 "86b0d9fbd93c0fa346f1332376b006a20398fd00a3befe955f8496a14c7d3e78"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-bb7ea73.tar.gz"
    sha256 "f77cb07346c0777f2e1a8f099d76239d8b1cb424ca8a58eb458abc395d9692d7"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
