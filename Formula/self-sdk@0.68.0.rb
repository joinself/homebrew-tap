class SelfSdkAT0680 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.68.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.68.0_darwin_amd64.tar.gz"
    sha256 "14a0672ff880d33fd1fdffbf7e2206995983e30364b290e793e06e8c0c18d471"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.68.0_darwin_arm64.tar.gz"
    sha256 "5ec69653659adb458d688211f2ecedf2758c798da84f1f8807c4b04c2a2b0efb"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.68.0_linux_amd64.tar.gz"
    sha256 "b65f1a71bc1cd4c376982591aed984f07476680c36e44c0a0e1329cc4739346a"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.68.0_linux_arm64.tar.gz"
    sha256 "3bd5f4889a555d56b1abc4b6cfc41fcd53b33177a5c3354d17442fadc574b896"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
