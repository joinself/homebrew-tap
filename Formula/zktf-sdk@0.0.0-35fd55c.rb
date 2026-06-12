class ZktfSdkAT00035fd55c < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-35fd55c"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-35fd55c.tar.gz"
    sha256 "fc74f2eab33d4260d0126ce6c0eee2290abca581123327cdce1520780e6de7fa"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-35fd55c.tar.gz"
    sha256 "cd1381480bd9f9ff90ea4ccbdccadf8e66890af8f239968c709a78322cb96701"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-35fd55c.tar.gz"
    sha256 "46c431d0f28a381b2b754959c5fa12c9679631525fba2874110c7498527646b0"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
