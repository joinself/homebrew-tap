class ZktfSdkAT0230rc9 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.9"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.9.tar.gz"
    sha256 "3016fb094189cb701240987ee833e53f55141c81c76a3e896f04527b828aee3b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.9.tar.gz"
    sha256 "8dd3ae25a7ce4b633f5ff22bd878b524dd639513078d7108b5dcd51a40ea5754"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.9.tar.gz"
    sha256 "0c4ad3785fac2bcade6dfebda25a0a5962640d7f812022113e4e7c587528d0e9"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
