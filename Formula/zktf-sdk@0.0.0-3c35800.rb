class ZktfSdkAT0003c35800 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-3c35800"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-3c35800.tar.gz"
    sha256 "364e217025d24e64989260a1940b9ba51ee88698527642fefe5e9d9795a387fd"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-3c35800.tar.gz"
    sha256 "ec436adde87ffdd27279acb25d67c27776b728dc82d7aa04af0408f29fdbc33b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-3c35800.tar.gz"
    sha256 "549b449f1175d151556e02489bac746215e2d0982f87e6566a298c2149ef5fcb"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
