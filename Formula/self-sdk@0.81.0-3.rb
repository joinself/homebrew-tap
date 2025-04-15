class SelfSdkAT08103 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.81.0-3"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.81.0-3_darwin_amd64.tar.gz"
    sha256 "c4d6c0e78103bd777600aec0955f31f710e609599f239ec563b1b837f179ca15"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.81.0-3_darwin_arm64.tar.gz"
    sha256 "ad8b1d0f393e790b894d72c8d8d1cb160e87991dd355d95d61ebb8251dae24c6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.81.0-3_linux_amd64.tar.gz"
    sha256 "3ae3b7a7f2bfe25b5bbe653be23efb5b06ccd0c4bcfef355d1a93ba160531172"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.81.0-3_linux_arm64.tar.gz"
    sha256 "29bcc237f9576ed1f501107a53ab47d3ec182e68bdb323a5840bef3f946eb1e4"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
