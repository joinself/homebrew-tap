class ZktfSdkAT000cac7dd2 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-cac7dd2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-cac7dd2.tar.gz"
    sha256 "d2c0fc5542bf8496662a9f1dabbebb4647d59e2d168595a1aafd6f216b747118"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-cac7dd2.tar.gz"
    sha256 "1023a4fbeb03f011411829da418381f8939408670a187315c78dba5c554fd607"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-cac7dd2.tar.gz"
    sha256 "1199625f9507756d8671e357cb46b8a7f7d28a143148ac042def17e72d9be52c"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
