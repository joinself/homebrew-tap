class SelfSdkAT085051 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-51"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-51_darwin_amd64.tar.gz"
    sha256 "7f163bb83a3b331b83b199928d0dac21100d0fbff9fe4fb4305e1874bf471265"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-51_darwin_arm64.tar.gz"
    sha256 "8b7e31001b9ccc518d19fbde23d0b6907f2cf0e8c6214d878150909be483c6ec"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-51_linux_amd64.tar.gz"
    sha256 "f778222f653d6a3dff07fbcb04c624eac795fa42cb0809c21d6f2c986782c5c7"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-51_linux_arm64.tar.gz"
    sha256 "d9828437c090de072f777abfbf1d2b09a6af4d9717ad512520b3b3db501730b8"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
