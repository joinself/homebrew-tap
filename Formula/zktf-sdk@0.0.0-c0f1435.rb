class ZktfSdkAT000c0f1435 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-c0f1435"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-c0f1435.tar.gz"
    sha256 "f22b8a6b4f655c374d8b2e76634dca2ad19ac386489511e4a6147142e360a275"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-c0f1435.tar.gz"
    sha256 "a0062675d664fd6ea4038e31a71bf56ff1bd6072e8c016adec9bad1d7ba64c9b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-c0f1435.tar.gz"
    sha256 "460bbbc9fe47216ae064c6611c00765440d9b78e9b91259d766b3af5e57b1510"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
