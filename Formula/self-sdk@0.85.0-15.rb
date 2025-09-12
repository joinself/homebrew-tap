class SelfSdkAT085015 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-15"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-15_darwin_amd64.tar.gz"
    sha256 "39edec5c386a1356fd0278dbda82a47e783c4bff0cf3fdb8de82ca887e58ef91"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-15_darwin_arm64.tar.gz"
    sha256 "ea620481268852e48ce7f82608b4be81a3218376c202104a639a98ca96a67fde"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-15_linux_amd64.tar.gz"
    sha256 "7c262d258efca635197da932380041297ac7a2d6fccdef5efd81bd805177ca2d"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-15_linux_arm64.tar.gz"
    sha256 "222707471b5a3db0e6abfb6a8312bd341f049af3787826b431b4026e22572f5c"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
