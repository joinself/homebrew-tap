class SelfSdkAT085047 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-47"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-47_darwin_amd64.tar.gz"
    sha256 "af684b10c14623817ace668b75821f0404a931bb7cfab3ef909a416cff457f63"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-47_darwin_arm64.tar.gz"
    sha256 "7c6b9b8fba21580b5eaed3d3b2f90e93f4c2297dd50b273d4d8ee7e455d8435a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-47_linux_amd64.tar.gz"
    sha256 "4f41d1cbbb0b5f66437ba4dc68d6dbb1cd8261e2923b129836cf7f3e03660944"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-47_linux_arm64.tar.gz"
    sha256 "ea6e8e95dbcfc0481f4ca8adb4b48c31a2d210f260ce18fc29d81d8abab05798"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
