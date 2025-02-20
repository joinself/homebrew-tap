class SelfSdkAT0670 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.67.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.67.0_darwin_amd64.tar.gz"
    sha256 "a94efc825ef74b53acd8f3385eeac1d4faca907aa8b7ce57c124850bf60d0263"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.67.0_darwin_arm64.tar.gz"
    sha256 "0747e6ab66d1960ae1e83fcba4fb50e7550ae10f9b94fccaf2a56fd559cfc753"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.67.0_linux_amd64.tar.gz"
    sha256 "ed878a52a68876b9dfebc20fc8bd01a6682bce8825bb310234d7bd4ab30e74e7"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.67.0_linux_arm64.tar.gz"
    sha256 "64535115050d19bcbe6dcaf10fd49686b0a692177ad133d97c76fda12e0b6b94"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
