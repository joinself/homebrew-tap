class ZktfSdkAT0230rc1 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.1.tar.gz"
    sha256 "76b00dbbfb0e8c695094b12e4e66c3eb32c48246970cb257dec740794d96c3fd"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.1.tar.gz"
    sha256 "98ebea1fa06eb98d66b69d6deb052569d0d9dc2d6ad4bb0a728fe7d53bd4c4e0"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.1.tar.gz"
    sha256 "3b6c7bfff68ce3ef2fe0ab7bd8d21820a9ede475b5970223f5ec478cd813f05e"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
