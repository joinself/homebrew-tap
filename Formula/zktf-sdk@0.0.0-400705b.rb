class ZktfSdkAT000400705b < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-400705b"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-400705b.tar.gz"
    sha256 "6886ff710bdb1719c603640891329b83800ba8af183b11235ce92e663462e822"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-400705b.tar.gz"
    sha256 "7d8fd7a8f312d4b9ee66d89ecc13b7c2110b8701d328247b6b3ee9c769ed41d7"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-400705b.tar.gz"
    sha256 "61fd5901ea95bfbf842d1377a1a28175a2176415bdc583311bc1eb280c33e403"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
