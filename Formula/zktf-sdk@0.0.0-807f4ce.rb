class ZktfSdkAT000807f4ce < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-807f4ce"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-807f4ce.tar.gz"
    sha256 "934345e93276f4942acc8656ff0543cc81973dbd54f455fef9e1c6d2f8c20317"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-807f4ce.tar.gz"
    sha256 "784987203bc23128f1a80d522c69cd5c5b7a494fd79aa06d1b0573f2e10054c4"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-807f4ce.tar.gz"
    sha256 "5b6094ccc9cb5ba7b9f7ef5f214274d3acb2f5c8606b7a83ab11ff3b67746928"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
