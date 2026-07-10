class ZktfSdkAT0001a0b1aa < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-1a0b1aa"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-1a0b1aa.tar.gz"
    sha256 "231dfc80339c8f03c6fb6dd01edd748ab6b48e3214ec1d6183e6b65b55f3eeec"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-1a0b1aa.tar.gz"
    sha256 "d818a03edccf5d8c26971bfb04925d58782e7ba1d0b950c3332b95f2d3439b5b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-1a0b1aa.tar.gz"
    sha256 "a45b9dc8d49448112529ba97c1e47ed09efa595de724f1f1b3411b5a8e156d3e"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
