class SelfSdkAT085031 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-31"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-31_darwin_amd64.tar.gz"
    sha256 "449168d915acaaa2133b13f3ecc8f8b5c46a12f98b929da1c57e80216d9595cc"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-31_darwin_arm64.tar.gz"
    sha256 "f415b67985b8d86de8f9a208195db8a0548a26324a995443b8d82644fad45719"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-31_linux_amd64.tar.gz"
    sha256 "01af5fa74d726ff81c05058426e12173e2937122d48b1f8c3f04f5e121839c26"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-31_linux_arm64.tar.gz"
    sha256 "87fd85cb2dfb73db33944e4bbed1ce371d1ce25685a4eae95cdbc394df75daf4"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
