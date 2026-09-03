class ZktfSdkAT000072aa85 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-072aa85"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-072aa85.tar.gz"
    sha256 "77b0bb4011ce3a7eddb4dbf0a3581c25200a2023d956fb45dd43f2ea320ee02c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-072aa85.tar.gz"
    sha256 "6812a3a135efa84270d51cadc2719eb5c23740a793a7869476bb2a663fbce659"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-072aa85.tar.gz"
    sha256 "aca2f90b87c75ef9a48bb46f009942a5809225b3d06bb49e8653089fbbe0eb71"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
