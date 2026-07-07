class ZktfSdkAT0230rc14 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.14"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.14.tar.gz"
    sha256 "c21a09183f7de17c1c825285b426b3bdd8b9e423b35376b12fb8034ebddf16e2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.14.tar.gz"
    sha256 "7ab33e7372993a540490ad618ca1f49839c3609f9958d6f98ee9d3dd5f437ebd"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.14.tar.gz"
    sha256 "5d36006680f02b4fe998854f597d6371fffd0367d275842c7708bdd58a490e02"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
