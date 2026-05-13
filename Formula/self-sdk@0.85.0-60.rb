class SelfSdkAT085060 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-60"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-60_darwin_amd64.tar.gz"
    sha256 "20634e2515e5f97483130784603c1a7442e4da6967f05b6f247106b659d8d0e6"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-60_darwin_arm64.tar.gz"
    sha256 "f42277dd76fecfa169f3255e4bdfa89f8601cbcc6ec6422ee2378035e777d996"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-60_linux_amd64.tar.gz"
    sha256 "ff86bdebb15ba5bdcc2bc5d5fd55d098cc1b14a05c782c055952d8a1c7ae43b9"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-60_linux_arm64.tar.gz"
    sha256 "dd6596940206023ae1b30980578494fc942ad113e0e2082f3169bd5da16fef6b"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
