class ZktfSdkAT00054f0758 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-54f0758"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-54f0758.tar.gz"
    sha256 "6d1fbf67eaa82101678a938d788d79f863280b78475f7b740cce9436b43e163e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-54f0758.tar.gz"
    sha256 "89eb61f63a76c4bfa7f2ccff535c9839e43ecb4e0789ca511495eaf272c613ae"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-54f0758.tar.gz"
    sha256 "ca83e0a5e077fe59a8aaf6b711e212a239ab6ded6e53079e7f865c70eb4c8f1b"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
