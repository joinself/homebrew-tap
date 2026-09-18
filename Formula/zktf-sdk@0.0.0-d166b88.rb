class ZktfSdkAT000d166b88 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-d166b88"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-d166b88.tar.gz"
    sha256 "b18a225b329995f089d572bed6b09595b4ab5d2a9fcc8bef5cce5796bfe8983c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-d166b88.tar.gz"
    sha256 "d5dc041716b6a0cea4fe0f41692174e2fae703f9884aaa4c8b6751ae38932190"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-d166b88.tar.gz"
    sha256 "1f36913290f399e61e444a07304d9b0ff0efb06d1f94a2fcdd89da1757ea624f"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
