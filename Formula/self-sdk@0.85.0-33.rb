class SelfSdkAT085033 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-33"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-33_darwin_amd64.tar.gz"
    sha256 "8e6d13a240a476af0e6df6f2c9242f47a7e14f267e7acb4ea61545abcd641d38"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-33_darwin_arm64.tar.gz"
    sha256 "347f66ecee67cfe1e0023a5048bd8729eb60882eb970ac04f7ef9bf6b144501c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-33_linux_amd64.tar.gz"
    sha256 "d2aeaa30879192935d30e7734dcb9a80158004815b0332549bad6298edf912c5"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-33_linux_arm64.tar.gz"
    sha256 "c3f7d07962a47254c71fe840f586c9f73b4acc516a0f363f2f0cb7ab4dea3b1c"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
