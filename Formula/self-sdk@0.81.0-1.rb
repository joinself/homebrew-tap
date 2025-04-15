class SelfSdkAT08101 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.81.0-1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.81.0-1_darwin_amd64.tar.gz"
    sha256 "f96b4b5321efb54424ade2759c576af1aacf8c4cd21c7c452af996307cf8aef1"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.81.0-1_darwin_arm64.tar.gz"
    sha256 "dce201c351ddbf04aa4be8e2a471cb04e0f49182f51fac09480fffad0fe9dc84"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.81.0-1_linux_amd64.tar.gz"
    sha256 "302821b541a5cad0ac25a51e32b25969c590efde0b935efdc1fc0f5ab10d3d1c"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.81.0-1_linux_arm64.tar.gz"
    sha256 "81c43ca198bd95eac72af2de6cd57404956e4dc184d37e2af271237ff4446991"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
