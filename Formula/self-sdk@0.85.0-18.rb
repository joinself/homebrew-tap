class SelfSdkAT085018 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-18"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-18_darwin_amd64.tar.gz"
    sha256 "242d7580b716ea5f71d4da3040204d8026bbdf028dd3a932708b2dceb418f7e8"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-18_darwin_arm64.tar.gz"
    sha256 "92c40cc951f4a1140fdc4eadc2795fbb917d96267f9a0027e0c77af85f0ca81f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-18_linux_amd64.tar.gz"
    sha256 "0f38bbf594fd9ce793066260fd2349270118a5915bfac8c54eb34783538d1fb4"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-18_linux_arm64.tar.gz"
    sha256 "9ff0758d2e2521a24c2b41247df39d7fc32af018d9134689da0bac70db1619a2"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
