class SelfSdkAT0580 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.58.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.58.0_darwin_amd64.tar.gz"
    sha256 "1eab95ee442b575d6a61ab519a446f9b7a102292a4794a27cdaabeda686e230b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.58.0_darwin_arm64.tar.gz"
    sha256 "15445651e8dd6d8f833da03dc6d7593d3420077980934a9017fe194c97c28387"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.58.0_linux_amd64.tar.gz"
    sha256 "a6710a61d7c9f532f089c623d516086ff993dc2592db3475a4c6e91c1e5cfc37"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.58.0_linux_arm64.tar.gz"
    sha256 "e3817a26e87bf16d8b82ca323fb6531348f53a784e619fa0c1b510c24555f724"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
