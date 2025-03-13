class SelfSdkAT0790 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.79.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.79.0_darwin_amd64.tar.gz"
    sha256 "087e8726bcf9348fddd30601427ca88c189ecd623da2fe29fdbc38081793ec76"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.79.0_darwin_arm64.tar.gz"
    sha256 "034e9f01b81b4f8e513c79270345fe8d291148daf7753a0634e57485f550a1f8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.79.0_linux_amd64.tar.gz"
    sha256 "0d8214fe81277928c4569d5030706c3dec0f1cc248f3077ba9aa55cf419e8130"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.79.0_linux_arm64.tar.gz"
    sha256 "e7bfb81fc7f5c94bfc1be26ebb4a5c6209787e97021c80d9650d9d7fb281bc55"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
