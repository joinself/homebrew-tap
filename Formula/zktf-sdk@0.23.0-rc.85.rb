class ZktfSdkAT0230rc85 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.85"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.85.tar.gz"
    sha256 "f984ca1855d14ed4d2b994f22ad625801f86f63e5e142e399cf364b29909238b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.85.tar.gz"
    sha256 "fa2553faa8eb5de6ba19750d52ee0b2a2695480177037ef0ee7defef70f75f71"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.85.tar.gz"
    sha256 "434fa04ec158d923d5f3070f66e157e3840bc892d2d4c456602d510d8276f657"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
