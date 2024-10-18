class SelfSdkAT0380 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.38.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.38.0_darwin_amd64.tar.gz"
    sha256 "17c4b455a314e34c6445974cd102d0e1e4e0c0efdae9f306a8804ea643aea67b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.38.0_darwin_arm64.tar.gz"
    sha256 "6b242d87c408d9fc304b76a2e1c409b3cb402afaeda58ca69cb7ed35ff57255b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.38.0_linux_amd64.tar.gz"
    sha256 "b0a3f6c4e3fd2228ddf8b2fe1eb628c8aea283a898116da1bb53ebf3b6853b08"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.38.0_linux_arm64.tar.gz"
    sha256 "944973b151d0ba22f021c7553dec90a7e9f5cf227899a7ab9e447f3a9b63381a"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
