class ZktfSdkAT0230rc78 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.78"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.78.tar.gz"
    sha256 "86fadf8b46f2365b35b2ed6bbd65438cc791df686a6537ea0c167d6527fdf3c9"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.78.tar.gz"
    sha256 "d5838c3888fb37cdefe73370a442c41a5d7d85e389d1f2973c0fd8f0a6342eac"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.78.tar.gz"
    sha256 "09034025092d65717ddfb62a400f52e8faeb2f67bad9136cb74c78399e4024ef"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
