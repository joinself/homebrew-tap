class ZktfSdkAT0008ab1f9f < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-8ab1f9f"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-8ab1f9f.tar.gz"
    sha256 "c8a336d00041273f36d620f0892b8567f3a8b7764ec468a992859d83c039ec05"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-8ab1f9f.tar.gz"
    sha256 "e543ed745c3fe1ed81ad5696c566e9dab8fa9bc7cc63749060082eab3c102380"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-8ab1f9f.tar.gz"
    sha256 "1862356d85cb3ee79c8023204b60b15f179baf420a76dbd90c1f1f9645256e7b"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
