class SelfSdkAT0550 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.55.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.55.0_darwin_amd64.tar.gz"
    sha256 "b63e193a818d83e540c80368097f44c9cc1e6754514e216a2f5b588b59866909"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.55.0_darwin_arm64.tar.gz"
    sha256 "41d26e114809b9519377fd52bb968ae378f5d46b6ca7976adf44297aaa3985c6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.55.0_linux_amd64.tar.gz"
    sha256 "e835934e10669b2a2566f076dc7a6e30d9e68bb742943aa00d7b24668b99e4a2"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.55.0_linux_arm64.tar.gz"
    sha256 "712e0d38a20299049e73bec91ce79bdadd0750ab9e680b4110ff05d6965e5b4e"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
