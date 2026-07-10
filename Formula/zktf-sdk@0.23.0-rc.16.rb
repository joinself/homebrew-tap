class ZktfSdkAT0230rc16 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.16"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.16.tar.gz"
    sha256 "a7a10dbd6769bcf25f3f1dc94b274e140e06709c01a393b74ca2e7dc1bee5e7a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.16.tar.gz"
    sha256 "79899e3ee72185edc26995f6216c06ce4096fe1e34dbcda8976501692987467b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.16.tar.gz"
    sha256 "6e8a9ecdc8ebcff7bda51ac0938a41b25afee2179bbd699d01a7e50c9247322c"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
