class ZktfSdkAT000fa1a9c9 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-fa1a9c9"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-fa1a9c9.tar.gz"
    sha256 "f4d7f8e808563880b999296b7aee4f1056c56fde8d1cf408130fee33aca8c4e2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-fa1a9c9.tar.gz"
    sha256 "b145cc23242e5ddf7d5044323a6f5682e6487f2a0e5d715f941eb545107059c5"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-fa1a9c9.tar.gz"
    sha256 "ff15900fcd28d6e75353030042de7f9f2a8798b266b71e34b6386e4e5d7828db"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
