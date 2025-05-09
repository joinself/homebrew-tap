class SelfSdkAT08402 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.84.0-2"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.84.0-2_darwin_amd64.tar.gz"
    sha256 "8d297531002b1fd0fc9d86105cfb8cfd26cbf1b7fcaa05c8652967cbb010ba84"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.84.0-2_darwin_arm64.tar.gz"
    sha256 "5b14e299f7dfdb247e4b881d8ae2314399fad908dfebc6c1f24b09e8ab6d1e1d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.84.0-2_linux_amd64.tar.gz"
    sha256 "832d3fa36a6ae8254b1cadf278ac97b1dc25c544065f590d02789144bd72064e"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.84.0-2_linux_arm64.tar.gz"
    sha256 "79b5707152614b25252b46b7ad0a6f0736516d926d4471c3c0079f2c2c149df6"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
