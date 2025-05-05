class SelfSdkAT08401 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.84.0-1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.84.0-1_darwin_amd64.tar.gz"
    sha256 "b79f80bca94783e5df95b630b7fcb34f963cfbacd6a5ebfd9efc6574736fb0cc"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.84.0-1_darwin_arm64.tar.gz"
    sha256 "6627e2a3b0103015ab0bd2bef34b01abe3788663537cc7d8db27a924096cd9c7"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.84.0-1_linux_amd64.tar.gz"
    sha256 "7af2fdd9bf9a23ef0c221f362b7cd2ddf43f0928ac0a00e36b0ab4cd6851b555"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.84.0-1_linux_arm64.tar.gz"
    sha256 "0e7f3e0cb1adaf05646b8123b19d3a2b4257474fe5c0bc141c8d8195f070aad5"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
