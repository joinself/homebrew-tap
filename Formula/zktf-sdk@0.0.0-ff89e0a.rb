class ZktfSdkAT000ff89e0a < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-ff89e0a"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-ff89e0a.tar.gz"
    sha256 "87f489293e919192fb09c6892a777bd8e5558ef5e5addb49185b266185739d6e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-ff89e0a.tar.gz"
    sha256 "88ed8d0cc5aed2a067306b720c88ebe0499ef02ad51ae2bd7fd6e606bb94eac5"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-ff89e0a.tar.gz"
    sha256 "0aee3237f84e1315a29290246e541df749d3dc157fc8d18043afa39ab2ea9046"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
