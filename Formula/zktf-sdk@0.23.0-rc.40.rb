class ZktfSdkAT0230rc40 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.40"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.40.tar.gz"
    sha256 "c3261cd4ae4cb2d152a7828126b286a97cb1c0378f648968f257e87c858103df"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.40.tar.gz"
    sha256 "350fa55ce60f769d00d2632d729273735c64208bfe724a76ea8a070b1493fa38"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.40.tar.gz"
    sha256 "94fb4efa4e7a015dfd0f1c8122c418ab9fff9851a8f6a2c0c986fdff10e762f0"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
