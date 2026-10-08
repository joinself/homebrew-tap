class ZktfSdkAT0230rc76 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.76"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.76.tar.gz"
    sha256 "f61e2069188d898e0d73a9a1929d016cf71a85b1ae231f726759d95719ee5b5e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.76.tar.gz"
    sha256 "e142cb39762c1f4d9780c0b91862f2dd85aeef26dabd693392ef110b66f24ed2"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.76.tar.gz"
    sha256 "9ef0686f42032ec58d76f609292e648f075cf0a4f0bac56195c83cd5db77445c"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
