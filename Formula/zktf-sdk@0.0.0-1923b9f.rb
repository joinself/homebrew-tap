class ZktfSdkAT0001923b9f < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-1923b9f"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-1923b9f.tar.gz"
    sha256 "c17d8bf3ec1e2eec6cb32d6c233a7a262f949faef36ce2283032818bb820ee44"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-1923b9f.tar.gz"
    sha256 "dbaafc0e37f583f33ae55052c7f4dbf2ee3c570cf57737bb9a873a71922956b0"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-1923b9f.tar.gz"
    sha256 "8c301163f4f467d5932528d2251be39a34e7c9228f44e9688abf4fda37ac8f49"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
