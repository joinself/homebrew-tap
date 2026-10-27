class ZktfSdkAT000102999f < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-102999f"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-102999f.tar.gz"
    sha256 "46a3404174eb1ec3fae202725cb60c346ab787ed02fde3917a88960b2f934bd2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-102999f.tar.gz"
    sha256 "e3705b6b86ba36b30624db00b0a07a48ca86fb9670a44d03e4d7ee0d1c3f3401"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-102999f.tar.gz"
    sha256 "fa7133727f0ed14b02fb8415f5682fe2781f6bf658cead436aa7d92873f7e70e"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
