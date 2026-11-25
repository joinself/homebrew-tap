class ZktfSdkAT0230rc109 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.109"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.109.tar.gz"
    sha256 "5c608b25c87ff80bd9a05dc1f36b83e4115d938de5de5c37cfe265eb6b62a737"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.109.tar.gz"
    sha256 "e4e7df57b3f5736f76f57c8aa42f7c0d80867a0886d0c3669acf0002777dc544"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.109.tar.gz"
    sha256 "b5b3f7f19e586cfa8656ec91a7582aaf339150e16075bbbb32609e9dd7f3286a"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
