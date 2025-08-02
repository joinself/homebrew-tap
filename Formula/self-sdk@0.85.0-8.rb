class SelfSdkAT08508 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-8"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-8_darwin_amd64.tar.gz"
    sha256 "2bdd4bedfeb34cffa77e59cc26a95018a7c4c882a9ab0e2fe3526b5266fa3eba"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-8_darwin_arm64.tar.gz"
    sha256 "c7ee483b24f5b5f5422c5e7d275f516386ca3e0a9f809c7b0b4918bac8ff86da"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-8_linux_amd64.tar.gz"
    sha256 "053f9091d6151bb3b07b481eca1d560692799020a5330c4e378c979fd29bff8f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-8_linux_arm64.tar.gz"
    sha256 "37b965623c2027130c30f4a09b8ed2426c0abdc9a8f9fa37577fa5fcfd95f9d5"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
