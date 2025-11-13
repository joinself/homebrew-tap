class SelfSdkAT085026 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-26"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-26_darwin_amd64.tar.gz"
    sha256 "bf23085ce7a12e83ac273900c0bf30e168e43c61d44ef6a9705afab2d4e79d2a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-26_darwin_arm64.tar.gz"
    sha256 "3b2616bd8fb41dc3183e2bf0320c3aeac8993bc5796178538b96fff66745e31b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-26_linux_amd64.tar.gz"
    sha256 "1980e19293c775fac8813836698169893d0ad91c28e43666a5815407a3051374"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-26_linux_arm64.tar.gz"
    sha256 "0c6d6b92f930c29940b7af29d65fd9b20730ab6db62a10e76b95a896ac650073"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
