class SelfSdkAT0450 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.45.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.45.0_darwin_amd64.tar.gz"
    sha256 "7a634356f14adabb3a94ed5cf8513400d128e8cdc2a9d05b9adf3905ded8021e"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.45.0_darwin_arm64.tar.gz"
    sha256 "e9178c6de967fc2617113a48e1a6a8418f6232e3e17a56cffa4ed8ef88ac5fb3"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.45.0_linux_amd64.tar.gz"
    sha256 "c1147541b9e25552e6ca0a11a8bfc6269130e8ec0c89c4126063ff43489f754b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.45.0_linux_arm64.tar.gz"
    sha256 "08cba65c2a9320ec870847579a411227d219376b5ede0ef13dec6e28b30275ec"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
