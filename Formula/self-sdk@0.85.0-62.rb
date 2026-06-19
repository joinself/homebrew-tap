class SelfSdkAT085062 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-62"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-62_darwin_amd64.tar.gz"
    sha256 "d0fd5feebf1b2891369d111a1533fa0a55f25300cec3f6c85a6a5b09a8259e7d"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-62_darwin_arm64.tar.gz"
    sha256 "bcc61cbcdb12a56186e1cff9745ce6a026a399e3c2ba411b810b639e0aea1c93"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-62_linux_amd64.tar.gz"
    sha256 "214ac5909b84a6d0adafc584f616e98f7d62bad5f93666f200026b20042e4daa"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-62_linux_arm64.tar.gz"
    sha256 "bbbf8f78798b92eef67d5e185a8e085364d0b61e3375f2f6094fa3fe4caa9a9f"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
