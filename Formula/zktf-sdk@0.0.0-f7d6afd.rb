class ZktfSdkAT000f7d6afd < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-f7d6afd"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-f7d6afd.tar.gz"
    sha256 "a90c68b7d82f213f9ac3cccfde1440886b0b23627af79c2f99dda9a47cc0b810"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-f7d6afd.tar.gz"
    sha256 "f6c7fe2312ec9bee362ecbe017bcbe5cc3c57e2ae917ef167c9e919fac0d1a3e"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-f7d6afd.tar.gz"
    sha256 "488aa3b2e73648847c07e01627bfb4a8bd97e1d52db5d4c727c035c8c3052db5"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
