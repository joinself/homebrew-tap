class SelfSdkAT085061 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-61"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-61_darwin_amd64.tar.gz"
    sha256 "baaf8b719749355fbf406a46938b7d4352c47ab1049812375ea46292c45c6f99"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-61_darwin_arm64.tar.gz"
    sha256 "6987991930f6c9159fb61ce1102c24db4a83e7687d3faa69cdd00b6a7b8bfa75"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-61_linux_amd64.tar.gz"
    sha256 "1a92c9f29ffd0b3c57cb36a47183469e28eba4673c822a49c53e3c4953aabec5"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-61_linux_arm64.tar.gz"
    sha256 "153c24ea1f46eb8d60b6b1b44677928d4cc0ffb1e2fbf61e1137a25c8cdeb013"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
