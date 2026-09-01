class ZktfSdkAT0230rc45 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.45"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.45.tar.gz"
    sha256 "661e9058e25048ffda88010c068bfcefa0b3dd8a959bab9af322c9ea5f8d353a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.45.tar.gz"
    sha256 "2a011977d62a0acdcf423d2e0b420932f9819a48d6df4c374aa4939c411e7a99"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.45.tar.gz"
    sha256 "30d334291064f18525e1943dba55c1fd7682fffbf7c40733df9ff7d67b4e5a1d"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
