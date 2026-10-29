class ZktfSdkAT000868413a < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-868413a"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-868413a.tar.gz"
    sha256 "bc2b411bed016c41cf8b2bba620438181e44d56ef060d1782057b7bac6e58bcd"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-868413a.tar.gz"
    sha256 "dea5f16b6627f25816048e6a90b1fa719c911030dc7c205a382d202a61e3e250"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-868413a.tar.gz"
    sha256 "171306325d21129fad324023deae83bdcac90aafda7af9f43230373abffa8630"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
