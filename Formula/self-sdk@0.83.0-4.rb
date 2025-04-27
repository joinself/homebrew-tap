class SelfSdkAT08304 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.83.0-4"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.83.0-4_darwin_amd64.tar.gz"
    sha256 "d56818403540103e047a1c1b6753a46a5cc46b73b71fd362590329de85a0da98"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.83.0-4_darwin_arm64.tar.gz"
    sha256 "7c8d9bad49b7b19ddf8ca88b80f8c8b7f3366e737b5f9cebb1f79adb077fb241"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.83.0-4_linux_amd64.tar.gz"
    sha256 "4117bc2b1b98dc024c436af244b9d14c7f6979faf4cfce88b450b2cf64a84b80"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.83.0-4_linux_arm64.tar.gz"
    sha256 "27482fb2a5b8dc46aac6fa0256f2562e3a298749d2cc8d49b679032798f4837e"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
