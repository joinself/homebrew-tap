class SelfSdkAT085043 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-43"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-43_darwin_amd64.tar.gz"
    sha256 "9a7ffa992a3a956ddf2b387b04c6be4797091600bf76e79c1d3282deab6082de"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-43_darwin_arm64.tar.gz"
    sha256 "8faf85f94844cf74f9f70d28da05c05c29bd00f88e490abc3fa376bc45f8fbe5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-43_linux_amd64.tar.gz"
    sha256 "3e6058f3dafd18b5bb303dd741eef5651e9ab5535414a855372310c359700076"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-43_linux_arm64.tar.gz"
    sha256 "76d6a72d04a4a921f99e74a83ac3ce27b62b8bb31538e8b7c3980daf8f28c026"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
