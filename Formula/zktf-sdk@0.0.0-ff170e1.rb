class ZktfSdkAT000ff170e1 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-ff170e1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-ff170e1.tar.gz"
    sha256 "c40400c8f6f420356070c909f79bbddbd3cf2049efac45141f170d1f4325f478"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-ff170e1.tar.gz"
    sha256 "27360749553a6a65ec3479de0f93d5ac11df26dca7e1cccb3eebee4b5061829a"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-ff170e1.tar.gz"
    sha256 "71683705c78efc67f87a2503c9fd8eac24fa7f0e2dfd6102826346e99cc2ee16"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
