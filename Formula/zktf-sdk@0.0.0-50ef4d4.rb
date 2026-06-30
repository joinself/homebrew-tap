class ZktfSdkAT00050ef4d4 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-50ef4d4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-50ef4d4.tar.gz"
    sha256 "ad95849d9e8333ab59affa9dff17ee1b1139382804b9aa1d89a86a8ce73069c0"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-50ef4d4.tar.gz"
    sha256 "41f120441ecd8b3779b509ee7c812ebdfa43a528a66a73ed3452115aaaed5f3b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-50ef4d4.tar.gz"
    sha256 "4060bb0cd26e556ea941aeb5ce249aec9057513ca6558d35d3b657b67fe3946c"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
