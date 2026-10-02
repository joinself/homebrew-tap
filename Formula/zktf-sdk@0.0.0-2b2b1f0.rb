class ZktfSdkAT0002b2b1f0 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-2b2b1f0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-2b2b1f0.tar.gz"
    sha256 "40cb2172f075aecabf67286fd79a3c427ffa098fbc9145d89d836c1f8c27e4b8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-2b2b1f0.tar.gz"
    sha256 "4cdb4954bb955206d31ab7d4bad1745abd5a1c9dd633eaeee616b7658750ac48"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-2b2b1f0.tar.gz"
    sha256 "d636f04c43070587da24354950ce180914aee752d6736d7db80d1b9db4e5397a"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
