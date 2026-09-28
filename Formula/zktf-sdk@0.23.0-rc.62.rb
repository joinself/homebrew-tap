class ZktfSdkAT0230rc62 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.62"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.62.tar.gz"
    sha256 "425a00db41efed1ef5a1ec94c8d10e4e2cd41ac1d0d5761462714191ccfa4a9e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.62.tar.gz"
    sha256 "cd18162c43b3774ac1c47b54fba1a9ca74ac14e7e05b453db931cff6ff8a433a"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.62.tar.gz"
    sha256 "fd1a1e201d2578905f87f3c293457e48caec0ab5acb3308b4d492e8e88ebb395"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
