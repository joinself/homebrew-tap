class ZktfSdkAT000f0634ea < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-f0634ea"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-f0634ea.tar.gz"
    sha256 "71556711c391a45a2cc8f8d78802f17c725d950dd8c74b30ff85801d717c9ff5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-f0634ea.tar.gz"
    sha256 "9fa02aa6d9fc30700815ecab2c375640350f6c42540557e5e2aba51ec968da0f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-f0634ea.tar.gz"
    sha256 "77c641ab38270bd0f73a1c4014ad5d2c79eefd93a83a304a3e1f4f048d65fea6"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
