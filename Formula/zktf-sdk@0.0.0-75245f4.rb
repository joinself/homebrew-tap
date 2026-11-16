class ZktfSdkAT00075245f4 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-75245f4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-75245f4.tar.gz"
    sha256 "cba28efba383e26b5ae67f06edc0a484aae80a868cd0bf2994d13d5df30b3c50"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-75245f4.tar.gz"
    sha256 "137b00dba55b67d7c2b35f0c034dea295e6c6d97f010d84fd48605595a41bd3f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-75245f4.tar.gz"
    sha256 "116cdcdd8df92f41429d5c8ff163c499db45604ad59efc12db39a5a0ba7f6b27"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
