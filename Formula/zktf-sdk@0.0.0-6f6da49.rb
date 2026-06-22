class ZktfSdkAT0006f6da49 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-6f6da49"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-6f6da49.tar.gz"
    sha256 "fa03dccee501747019fc467c333c74659c3c59bf928ddc0d51e8122580da9ec4"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-6f6da49.tar.gz"
    sha256 "479d41e7c00e71e524e07b863cccc683b64a7304871da8edfaacf68cf9d51033"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-6f6da49.tar.gz"
    sha256 "12a8fbf928f6c2774de9549b66473dc6aecf517e25f7967037e114d471357d78"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
