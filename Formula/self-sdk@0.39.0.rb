class SelfSdkAT0390 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.39.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.39.0_darwin_amd64.tar.gz"
    sha256 "adb6e646e78b4f0220ab4fd203092f0a465e69049d38d832bda9849176148633"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.39.0_darwin_arm64.tar.gz"
    sha256 "fe3fe2c537d8305401c055af90684b95113a862e9ded1da0d9d58e7cbf6fee16"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.39.0_linux_amd64.tar.gz"
    sha256 "228bafd205cb96af1f0af6548897b099040667aa6bcdfc1ca6d0291958f5797e"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.39.0_linux_arm64.tar.gz"
    sha256 "b1e57211be3857b17473d0c17e3ebe3e068107402ac8bfcb8589ea0c1cbd72dd"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
