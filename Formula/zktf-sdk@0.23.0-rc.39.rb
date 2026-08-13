class ZktfSdkAT0230rc39 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.39"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.39.tar.gz"
    sha256 "a3a7f8fd58a08c253ef58068779251427b7a4e06863cac7668a903bb3266ac06"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.39.tar.gz"
    sha256 "461439f3b91db0cfc7db3eb0d0188b0c3f8d6767e5ce9a0706c195b7d6ca2db7"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.39.tar.gz"
    sha256 "c74d525a1244891cce9004d72b2114f2fcdcc2380f594fc5478f0c78293738b8"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
