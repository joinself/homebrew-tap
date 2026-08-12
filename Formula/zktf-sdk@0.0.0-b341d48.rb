class ZktfSdkAT000b341d48 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-b341d48"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-b341d48.tar.gz"
    sha256 "77a1425d870f282ada3f0db972aef4294f8ba66fb9a807c7e1a510942948d68f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-b341d48.tar.gz"
    sha256 "f3b2e558eaa4e125ee4c688d1d68ebb62b4f83053643e013eba4b009e025e4bd"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-b341d48.tar.gz"
    sha256 "3f4be5744adadd7cfb51f9fa46305160154f588c7a4a229808bc44c438e78f3e"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
