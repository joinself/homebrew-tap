class SelfSdkAT085025 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-25"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-25_darwin_amd64.tar.gz"
    sha256 "120a7b6213edda05ed3af9101baa9a677a0f585975b40ea3a971b04b8c71d3ce"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-25_darwin_arm64.tar.gz"
    sha256 "062c7054165be51c7c8ab1a6f477848b0b4d07cd1e452f9af1f41b675c481b5f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-25_linux_amd64.tar.gz"
    sha256 "1943d4466b70f4f0f41b212ab911c8a4d3ca95970292c67e41cb0eb7801d4888"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-25_linux_arm64.tar.gz"
    sha256 "55428320b86ac95c8044decb7439ba24c5d43b7433bf590b13d32b21f42732ea"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
