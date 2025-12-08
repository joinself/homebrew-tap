class SelfSdkAT085035 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-35"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-35_darwin_amd64.tar.gz"
    sha256 "56f82af9fbdb3559ae0c1fd04ab4a93923bc59b87aa6f8b3f0a0f25c1be648f7"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-35_darwin_arm64.tar.gz"
    sha256 "ae82df9e2c0825aa55930230921c4904941b0f337c43276431eb74202ff329eb"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-35_linux_amd64.tar.gz"
    sha256 "88baa3037ffa76e2a4c678b47c1e412a1c30adcbb3884ed6da0187679abb1a07"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-35_linux_arm64.tar.gz"
    sha256 "0ba42e6b21b6c4d60d4a23dc66d05a9b28c40b94d82fdee9795ac169f8e0b2e8"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
