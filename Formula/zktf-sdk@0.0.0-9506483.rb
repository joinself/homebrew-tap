class ZktfSdkAT0009506483 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-9506483"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-9506483.tar.gz"
    sha256 "3aa2afa8929f119c8b4d7784349dc25c780e800bf7b62bb9b4c37d5bbf3a720f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-9506483.tar.gz"
    sha256 "4dc2dd435f85ba41420c5202303bdc9e8a55cb238a283ed9b3081ba4fb74c294"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-9506483.tar.gz"
    sha256 "07b625e0b779bbb4d5bf71975aea81d1b513584cb6555fef6dee095b8105fa75"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
