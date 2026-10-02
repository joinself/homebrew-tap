class ZktfSdkAT0007248be5 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-7248be5"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-7248be5.tar.gz"
    sha256 "76a7f2efca54ccab53ddee1d9409dc93709a0dae504b02da73acc3d3753a6568"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-7248be5.tar.gz"
    sha256 "634b5f54755cf6e7d5fbc77ec121ca93fc02b0dc483193c5bed3be259993e578"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-7248be5.tar.gz"
    sha256 "290c286314ae3186f04a8775d0d4aaa6469bd0d9b410884f683156828d0c7b28"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
