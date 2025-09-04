class SelfSdkAT085014 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-14"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-14_darwin_amd64.tar.gz"
    sha256 "8e03dcab3c34ff6fef8bfda50c1ea9793fc056000bc20511fc2740a5db014fdd"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-14_darwin_arm64.tar.gz"
    sha256 "27af1b3549d1b58d45424f02de24eeb69073ffd2eed1e32aaaae24a3beefd1b6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-14_linux_amd64.tar.gz"
    sha256 "487455662abf6607f02f51fcb1d711484d0db86d0328f63b88308d51d002cbeb"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-14_linux_arm64.tar.gz"
    sha256 "5d3c4dc037c2533a5f088c40b83d35d0198a4fc9ae5e752cb1d53b6a16256fbc"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
