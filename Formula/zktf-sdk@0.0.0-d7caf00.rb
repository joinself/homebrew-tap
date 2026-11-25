class ZktfSdkAT000d7caf00 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-d7caf00"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-d7caf00.tar.gz"
    sha256 "53df30761329ae3627f8fd6501060521857187d0569a1da1d408dd5542acd9f5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-d7caf00.tar.gz"
    sha256 "967d50f017ce7859b2a09ecbabfcad26a12a34751c5c6bc42a4dda4c75db1f6f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-d7caf00.tar.gz"
    sha256 "12fe05c8c4142cf98538c8043c15b95bc09a66b472388e02cc2e517dbe64b884"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
