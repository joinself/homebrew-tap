class SelfSdkAT085030 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-30"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-30_darwin_amd64.tar.gz"
    sha256 "553b6082a80da31e8aabee4624e86ee3095c2a4517a250cfcdaa55af93654fdc"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-30_darwin_arm64.tar.gz"
    sha256 "da38c7624205caa7b2322d2b9a43d5d74c5e3e34be31284dd0763d39b494486c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-30_linux_amd64.tar.gz"
    sha256 "7128044e45e9247b247939df37196f15bebc9c2405675f1b70e228e156dfa229"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-30_linux_arm64.tar.gz"
    sha256 "452a91b5f3ff3f685bfead2e1d39bc1c4e29c6763771b1f1e4149b50523f9105"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
