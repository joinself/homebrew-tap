class SelfSdkAT085013 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-13"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-13_darwin_amd64.tar.gz"
    sha256 "dcac7531b1756c5d0a795800e5e65f6f0d31f358aee3f60146d4c84b83d2f263"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-13_darwin_arm64.tar.gz"
    sha256 "3daa4e9d6b4fef1a0c45d90bf848b9c7809d3dcd3847e48e3925fdc38c633ea3"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-13_linux_amd64.tar.gz"
    sha256 "6d8c964d2d0bdbf79a3bf9b659137404a05390b31b66e5a1992535c30df55b9c"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-13_linux_arm64.tar.gz"
    sha256 "5d8150808ec56e478fed88bc9003413a10e58b1de29a435886aa5cb975f1a05d"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
