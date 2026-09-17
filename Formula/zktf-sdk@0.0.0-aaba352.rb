class ZktfSdkAT000aaba352 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-aaba352"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-aaba352.tar.gz"
    sha256 "3b2be32a9f05a49812780abc11abc77dad4fb432634e88851319a9e23c54b0f3"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-aaba352.tar.gz"
    sha256 "755c5749d88bcedc42aa635ebc5a26c96935b869e13ccca2a5cf7471af7a28dd"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-aaba352.tar.gz"
    sha256 "c7e6bfcdada710f0c0b8ba449ab68010d3c1c3921c889dca133bc7c114c3891e"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
