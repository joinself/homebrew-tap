class ZktfSdkAT00030914e9 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-30914e9"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-30914e9.tar.gz"
    sha256 "f583db909427e1f76aee854e8fb24b938c72914e80f5fd0934ef9269ed24210d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-30914e9.tar.gz"
    sha256 "edd691d55cec80e548217990daceee30a8581d80463e3b73ef7b983551cfcc02"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-30914e9.tar.gz"
    sha256 "995f227912c4b227f1cf81b9533751451718fc935ce0e114fbcf87b61cc2756e"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
