class SelfSdkAT08501 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-1_darwin_amd64.tar.gz"
    sha256 "7ac6638cfa1b94237b1f0f61b69901cdf4d894fd1eb914de502012c78979c850"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-1_darwin_arm64.tar.gz"
    sha256 "baa74c201baa275aa38a0993db8db1601841d37f70ad48784e4b08e0b194d374"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-1_linux_amd64.tar.gz"
    sha256 "5917da4a7cf783926086268eaba5ea64dc66accbc4e6a63d6fcbdda0b534da5c"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-1_linux_arm64.tar.gz"
    sha256 "f5c4b7ebb5211e205f3782a2edc9e9016d6df0bdbff5fd7041f96be2b9a6843e"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
