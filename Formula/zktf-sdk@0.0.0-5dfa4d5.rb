class ZktfSdkAT0005dfa4d5 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-5dfa4d5"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-5dfa4d5.tar.gz"
    sha256 "d703e3d634daae85d049c9430591456798d612b7eb5b2ec42bc4cd633d2f340e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-5dfa4d5.tar.gz"
    sha256 "c98a0bff62207d292622b298fb79309c05fe0dab941d6ac34112764a29167046"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-5dfa4d5.tar.gz"
    sha256 "0136b92c1610e9e0dd23f5e07e872dbedccafe62cbdbd319b54fdbac89c85a05"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
