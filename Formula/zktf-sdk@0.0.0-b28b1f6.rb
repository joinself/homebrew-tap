class ZktfSdkAT000b28b1f6 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-b28b1f6"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-b28b1f6.tar.gz"
    sha256 "56e7f9dea7c21fe7b6afff13586a214efa0eefb9bf62aa497234aeedfc8c79bd"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-b28b1f6.tar.gz"
    sha256 "7ad30e1749f4590cce4882a6cc78748ccfcbd06b63a54092deea06da40ab62d2"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-b28b1f6.tar.gz"
    sha256 "3869847029aaa9bd256a2823a19f08d327849dce982c1b7d5c43711edc005783"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
