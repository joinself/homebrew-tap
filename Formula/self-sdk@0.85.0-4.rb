class SelfSdkAT08504 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-4"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-4_darwin_amd64.tar.gz"
    sha256 "48aa4c8991da753934cbedc61ac451accc1b22b1af06fd099e0bbfd833508c95"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-4_darwin_arm64.tar.gz"
    sha256 "affabd808dbc987fa3b4649cf42dad3f354f0a208ab5a5e8767dea8de6359c17"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-4_linux_amd64.tar.gz"
    sha256 "fc8772f19c6f2e38f50186f6dbdfbf2dd0c4841f35176be6ed61f339340bbe30"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-4_linux_arm64.tar.gz"
    sha256 "a0b86f6960f53147756117c4e1a7cd9d8bd1c5a506e0d417890e6246ba9b64b6"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
