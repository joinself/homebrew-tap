class ZktfSdkAT0230rc48 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.48"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.48.tar.gz"
    sha256 "01a7ad78b7b77c6d6a3647af9cf1b7f5c3560ebeca7069eda845dbd03e8a1c05"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.48.tar.gz"
    sha256 "a617cf6ca7f6e361808f438c56d94e9bdde5009b0e2b5fd1f540585ff005fb02"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.48.tar.gz"
    sha256 "3e33cedc841506c6076b4c95155aa73a83d99a98151e0a15fc0f7dccde9924f8"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
