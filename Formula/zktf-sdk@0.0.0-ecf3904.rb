class ZktfSdkAT000ecf3904 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-ecf3904"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-ecf3904.tar.gz"
    sha256 "1d1d07ec501424fc202a867b2faf9f66ac9bb8116c78fffdc4e82ab97e84c741"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-ecf3904.tar.gz"
    sha256 "2961fde2b468128f8329b3832875600353d8212fd3509994de6b723abebdaa98"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-ecf3904.tar.gz"
    sha256 "0a80ff7ef0b1e4f23ae154a6ae53a33514ece13f22845f645464189cdd8a1b9a"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
