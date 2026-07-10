class ZktfSdkAT0230rc17 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.17"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.17.tar.gz"
    sha256 "ae57c578af4490991f5ddbef5d411e74ee6d54b6099e7d8a0420c661098ef0e1"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.17.tar.gz"
    sha256 "01fb41c123382715ff58e58cf631451a0405b19b4280d7a12bc61bf0d25e1fac"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.17.tar.gz"
    sha256 "12cd6ea2bde2e44bdc31e0c3e60f57c2e414bc05740c991cfec99cfaaf15cac7"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
