class ZktfSdkAT000bde25e8 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-bde25e8"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-bde25e8.tar.gz"
    sha256 "101ed9b1ba0e4b91c7f718bf49f3806e48f91eb7a360a5cd5b6ce686423e0999"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-bde25e8.tar.gz"
    sha256 "a72a6e30692bdbda882149cf279a91f612bf30b1946384d5e5fc28532d004dec"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-bde25e8.tar.gz"
    sha256 "366498283acc6970e92cb28d98c1f17f43d52daaf2b650bcf237c64c57afeed4"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
