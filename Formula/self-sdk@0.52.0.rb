class SelfSdkAT0520 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.52.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.52.0_darwin_amd64.tar.gz"
    sha256 "678075d6d714dbcbe7f92266ed6d00432cc1e1e28f1b150a880d06884ab03ca0"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.52.0_darwin_arm64.tar.gz"
    sha256 "53093f385aea17673961c1bc1a124027d7600f45c61210c0d63b06dc15bec9cd"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.52.0_linux_amd64.tar.gz"
    sha256 "9ed31f3aa948580e6113efd2754de7d88ddc0d32b7152c7b0d22cbad46035ac3"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.52.0_linux_arm64.tar.gz"
    sha256 "a5529bc1eb36b2180650d33cd7ae9ac100d983fe01f767a857c3900881341de0"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
