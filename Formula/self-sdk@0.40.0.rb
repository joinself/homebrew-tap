class SelfSdkAT0400 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.40.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.40.0_darwin_amd64.tar.gz"
    sha256 "9be217a4dd14bd23a32ba447c9744da7dc1e01123547b70c584c694a987be6fa"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.40.0_darwin_arm64.tar.gz"
    sha256 "1826c09257b1adb06902a541adb590f29bf3eb164a7fe589d286c0494c377c2d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.40.0_linux_amd64.tar.gz"
    sha256 "47ff5eca6a739a2d8672062cce300ee62ba35bafe275d68ad09dfd34d0a41465"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.40.0_linux_arm64.tar.gz"
    sha256 "2bacaf85f8eb1da44ec7d57da986109219cac4ac4adadf6101c8d7a49933435f"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
