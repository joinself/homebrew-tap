class SelfSdkAT0700 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.70.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.70.0_darwin_amd64.tar.gz"
    sha256 "64b5a51f530a55d5725804268c4f20ebadf631fa2bf2e0a04d07431ca7aa1ff8"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.70.0_darwin_arm64.tar.gz"
    sha256 "012c9d24d1678339465853c8ab759f3b51aa547ca04f146636d5ff66194dfc79"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.70.0_linux_amd64.tar.gz"
    sha256 "deffe6dec058adbeec1b5d375f89421cbec127925b1bb51bdbcb10aee476905f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.70.0_linux_arm64.tar.gz"
    sha256 "f1d5e1f4a408541e0720696323974d1864f466ac1163a8c702116a96f55e58a4"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
