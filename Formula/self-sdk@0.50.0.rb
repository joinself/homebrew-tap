class SelfSdkAT0500 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.50.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.50.0_darwin_amd64.tar.gz"
    sha256 "b1c915cf67c4375745aa144dbd7045b7dcbabfa41cbd09e1a9973ffe70fd0d04"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.50.0_darwin_arm64.tar.gz"
    sha256 "9032199b386f91c65642522b49c05e42304f0e5478278aa97217547557259361"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.50.0_linux_amd64.tar.gz"
    sha256 "de5d1bfa5d4732e2fe0480d36dda1bbe5155a9d90bdec029bbc6c568fb99c906"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.50.0_linux_arm64.tar.gz"
    sha256 "899c47ca989a84c2a2a4bbb7c3e2ed771c24b47e6f39b77bb8a49e46448310fb"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
