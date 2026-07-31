class ZktfSdkAT000c996fd5 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-c996fd5"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-c996fd5.tar.gz"
    sha256 "fb569633ad21ca8198c56e29b99882299169b8f12994e1fa09d20cf8a0d1438f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-c996fd5.tar.gz"
    sha256 "7ec66a160d9e650f6aa9433d84e762c86241f84d27e70a3166bb29d07504c83d"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-c996fd5.tar.gz"
    sha256 "003aea47203a1eb1a9f0e28f334d831df64abaaaa85c60a126418c3f06594645"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
