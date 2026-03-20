class SelfSdkAT085054 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-54"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-54_darwin_amd64.tar.gz"
    sha256 "c064522bd32272e153967a2f971fbf33057161418280f5f1ee43965dbad43369"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-54_darwin_arm64.tar.gz"
    sha256 "1879acd9e5c13a93d5c28fbcdf2e5d6b93641eb8a69d64289d8c724e915c2448"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-54_linux_amd64.tar.gz"
    sha256 "41463d19213b2b4be8e1d0e1385a296cea4bc482088337beb8e15ee18b702255"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-54_linux_arm64.tar.gz"
    sha256 "438b54f53eb50352c94507e4a5bef41d0024758546bcad55f7f3a58daaa3c9c5"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
