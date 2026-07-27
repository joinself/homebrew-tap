class ZktfSdkAT0004f2f0af < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-4f2f0af"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-4f2f0af.tar.gz"
    sha256 "df2fb181bc7d71376bc0040d9211a577ee80335660226586ad6b8a737ca80fb5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-4f2f0af.tar.gz"
    sha256 "526adcb777714c3b5fdbe9376e5f1ae0c1ffed6892ef3427b1f3eac61d964b38"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-4f2f0af.tar.gz"
    sha256 "a22774b046b23dea69e4377ade1336657fa4e751dd6ec71713612a600fbc77b4"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
