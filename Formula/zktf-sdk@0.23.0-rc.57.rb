class ZktfSdkAT0230rc57 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.57"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.57.tar.gz"
    sha256 "3bfbf5cc2e9625534f5a2482a1d38490db08092efa06ebfc3282a46a706b281c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.57.tar.gz"
    sha256 "3a67b21226a71d231577d34443a1f59de1d62fd76b0524c1856ab3d67edfb701"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.57.tar.gz"
    sha256 "7d9b3688c62e0231b1b3b71b1f4aad7363ae5fe4be7856d84064d093f33efc1a"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
