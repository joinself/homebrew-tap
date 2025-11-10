class SelfSdkAT085024 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-24"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-24_darwin_amd64.tar.gz"
    sha256 "d99ed7f1694dc9211cebf8e82ac389919baee4b4d9909521ae7c707c084abff7"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-24_darwin_arm64.tar.gz"
    sha256 "2bab771e2fbad094afd0fdbecd318d86312b0ab189f157f069f1b52a91df5ad1"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-24_linux_amd64.tar.gz"
    sha256 "cd42b70fa3e836746907fc7ca41e7b49dea058fc7ebfc01de4b9c29000469cfb"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-24_linux_arm64.tar.gz"
    sha256 "ec201c2a94435067d35ae8c8001e48cdc4b4c32612c811cc423e9f7e976b381c"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
