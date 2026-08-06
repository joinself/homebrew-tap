class ZktfSdkAT00008240b3 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-08240b3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-08240b3.tar.gz"
    sha256 "9a1aaa7f3c90afe825ce5ccc5e00c5bd4a54e76e1ba50d1c79eaf570b8cd00d1"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-08240b3.tar.gz"
    sha256 "54c77abe9b4dc03169ef91b817117da2ac5d6d3c1582faa054624349dce11ba2"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-08240b3.tar.gz"
    sha256 "9fb1021c35f7c616da677a6bd4efca1718cc24202a5d865831a2b1521dfa0b96"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
