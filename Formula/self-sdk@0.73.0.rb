class SelfSdkAT0730 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.73.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.73.0_darwin_amd64.tar.gz"
    sha256 "8138431c12d76690acbd7da2f99b265bbe988014fd520ad6a5c674ef5ba4d24a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.73.0_darwin_arm64.tar.gz"
    sha256 "9ba2c1acd229754ff24902a1a3e4d0eb5a81e93bb10cdad42174c956c51e9d11"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.73.0_linux_amd64.tar.gz"
    sha256 "513e229e3aea1a826931d4abbbd60e9f6dfafd8d8b24ba7f8d7f8bbd5a4b2b6c"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.73.0_linux_arm64.tar.gz"
    sha256 "51634f5bb5a1ad8db95a0e8cb5ec2f2a659173ae7530cb93f7b4c2499d32dd3d"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
