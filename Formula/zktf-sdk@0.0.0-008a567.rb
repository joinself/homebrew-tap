class ZktfSdkAT000008a567 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-008a567"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-008a567.tar.gz"
    sha256 "9fa44ab5167a1af52f0ae85ca97ed1621d9508f2fe6c7223f98591526d290fb8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-008a567.tar.gz"
    sha256 "3b968c3d3aeb985738a21569f7374f2d30088c0e678a1aa5d095479cc2b9b829"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-008a567.tar.gz"
    sha256 "6e4127fa56ddd03e8190bd40e72726f5655619d4f73db330a975253e38a458ce"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
