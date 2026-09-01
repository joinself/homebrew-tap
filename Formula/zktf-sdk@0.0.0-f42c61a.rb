class ZktfSdkAT000f42c61a < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-f42c61a"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-f42c61a.tar.gz"
    sha256 "c9dc8bf22188b460f865756446ae3daeb3ac323b9df54769d062bce0fcdf391e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-f42c61a.tar.gz"
    sha256 "5c96af92afb0ab0acb8b929cff6b8786ec35e44d466a2cfd7d74fdd7b676eeb5"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-f42c61a.tar.gz"
    sha256 "c62add0620ab7ceb81d1d6d54450accb3236d94e837daef06b0825d18f48f153"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
