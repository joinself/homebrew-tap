class SelfSdkAT0740 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.74.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.74.0_darwin_amd64.tar.gz"
    sha256 "d508e280b5fd72278df22c3e31b3b1320f37e8f43393e4b29302d6414e6dbcf5"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.74.0_darwin_arm64.tar.gz"
    sha256 "3a1519ff097e882d6cb56f7730e2d8cc696ebc5d78d1fb2c576bdbac24fd99ef"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.74.0_linux_amd64.tar.gz"
    sha256 "4298692c33220157c1d15ff0a6ef48acddfa84f1e75efc8ebb2c486b21633fe3"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.74.0_linux_arm64.tar.gz"
    sha256 "90511fa1580b16909f21f1f6e156c3e9a9a9fff43066f66be6f16c6238099ab7"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
