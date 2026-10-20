class ZktfSdkAT00084b5a08 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-84b5a08"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-84b5a08.tar.gz"
    sha256 "ab5ac1e25b32300a370224d2c704945e53e0bd1d34bc98c20c75bf9c83815cda"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-84b5a08.tar.gz"
    sha256 "c4a981244222467d08877235ab16db7dc5348bf17b8d588756072e0fe566fcbb"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-84b5a08.tar.gz"
    sha256 "c2bd6a1a44e95267ef9c942b29b8fd80c3a2c687e06815876a618d823a00e97b"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
