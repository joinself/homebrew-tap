class ZktfSdkAT0005dbc5fd < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-5dbc5fd"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-5dbc5fd.tar.gz"
    sha256 "5a4cc581ec609b411dc689248eb95f5aabe302dc6f5d7c76b5bb7d515218f645"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-5dbc5fd.tar.gz"
    sha256 "4dbdd4c2b28888f11a3e6ec23495d7c3fca9606b2a446ff0017122f28d0eb096"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-5dbc5fd.tar.gz"
    sha256 "071cb17376c8781f8feed4219fb2c1d18542da9097ad77811621109de7b71324"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
