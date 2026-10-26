class ZktfSdkAT000fb1632f < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-fb1632f"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-fb1632f.tar.gz"
    sha256 "8f7a90a011843e9942048f3ab65a63e69995a6fd2dc9f201b426a0aaa8ea4665"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-fb1632f.tar.gz"
    sha256 "25674d581c1bdfb1f3aac4bb820d49562edb8409f1dc4ba59ccab1f422bd0163"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-fb1632f.tar.gz"
    sha256 "15decc46bfcbe18bfc19d1bee6ce3c94376cbd39698bc14fd70eee51e9263d44"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
