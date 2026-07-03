class ZktfSdkAT000ba3ac9c < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-ba3ac9c"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-ba3ac9c.tar.gz"
    sha256 "64346323fc36ad2764a35b7d07419c75216a3e717ef07e9c9a65bc2e5df32dc3"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-ba3ac9c.tar.gz"
    sha256 "87359002513682a42199fd213e0cbd0069986bab39d12e6f5cf515d17e4b7546"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-ba3ac9c.tar.gz"
    sha256 "d1a5b34aa673f3a86bb4c29e9b358f6d0ba3c9e64730dea3cf35c8409dfec770"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
