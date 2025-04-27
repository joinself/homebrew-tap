class SelfSdkAT08305 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.83.0-5"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.83.0-5_darwin_amd64.tar.gz"
    sha256 "2c65a98cc0ffd45f8e422da1f2aad95331f68c26b364dd8ab7f77930b22ab950"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.83.0-5_darwin_arm64.tar.gz"
    sha256 "b00807b8c2a91bad4b2ea0f673949711e00ac92f4ac4aeb8c76373babf324c23"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.83.0-5_linux_amd64.tar.gz"
    sha256 "3e5b8087c3d498bc9ee9e76e81b61e2939b906b15627922e5e79659078998315"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.83.0-5_linux_arm64.tar.gz"
    sha256 "e1bd07cbeb72979243bee7530f35d68ac121b0f47e586bbadc54cbeb0d1ca4a7"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
