class SelfSdkAT0410 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.41.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.41.0_darwin_amd64.tar.gz"
    sha256 "b1e95d84f097dc84439b9489ed9db68de98970738f35ba443cc94115ece372d3"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.41.0_darwin_arm64.tar.gz"
    sha256 "b93742243bf18c87e607b801675eadb4bc67a82a659c539f414dc02926edd7a5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.41.0_linux_amd64.tar.gz"
    sha256 "238e560dca4b773b2ca775d315e06aafad58f2059d5192b31baa64f25da01786"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.41.0_linux_arm64.tar.gz"
    sha256 "0d18a55cc22875f1eaf503d4f5205f8e69a6535f130e1abdced432e679c7c97e"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
