class SelfSdkAT085045 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-45"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-45_darwin_amd64.tar.gz"
    sha256 "303a8f957aedfe58d5a1735c5996ada69b2bbd6b29440518e9fcdc442588e5d3"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-45_darwin_arm64.tar.gz"
    sha256 "6c2645b58da2602b9410a278b8ea46ba729847c6a96f32271c049911a1772858"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-45_linux_amd64.tar.gz"
    sha256 "e61666345108fa0f6f74c2e47b15752c833e4a6c0f8a5a402cb0bd90382632fb"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-45_linux_arm64.tar.gz"
    sha256 "a6655f48ccb8557409a77ab96688dc226c5080ec548c33752f552d44f7391068"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
