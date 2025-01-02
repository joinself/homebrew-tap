class SelfSdkAT0480 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.48.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.48.0_darwin_amd64.tar.gz"
    sha256 "c96053d42b804d75e396cc9a5ca2edb556c2062f6b7f33bd0985960f9a323e6b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.48.0_darwin_arm64.tar.gz"
    sha256 "2d0fc67fba8bd137a4af3352d8e73a61a1139ada0614129880f2d04c563ccaee"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.48.0_linux_amd64.tar.gz"
    sha256 "08bf73d2ad84f7213fafebd2c62d39db50a24d034bedcb837b2d24fa0ab53612"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.48.0_linux_arm64.tar.gz"
    sha256 "ac72fed190c055ec7612edf4ebe9d128e1d9a2b61dfc021f44dbfb9541314191"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
