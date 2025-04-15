class SelfSdkAT080012 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.80.0-12"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-12_darwin_amd64.tar.gz"
    sha256 "ba09b0b1f3e69ca786103e2ec66c655f3c148fe403df7aa30d4ccf45aa234046"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-12_darwin_arm64.tar.gz"
    sha256 "d271fc22149de8c9640685fcb02adb633a79d78d49781e9804e866fa287ffa86"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-12_linux_amd64.tar.gz"
    sha256 "3ff7e26810e0d26354caf0709aebf1554d748429c0cbd1b3168f1362c6ce7ff1"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-12_linux_arm64.tar.gz"
    sha256 "7207438b0e4ae3ebcd335983710afb45cfe5c75942e12e1dd5c59c4fbcffa3b4"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
