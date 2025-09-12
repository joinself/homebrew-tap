class SelfSdkAT085016 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-16"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-16_darwin_amd64.tar.gz"
    sha256 "bfb9ece035824aaddd1a7e38c33273963639322e1cde6616a651bdba72ec4def"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-16_darwin_arm64.tar.gz"
    sha256 "2f00f2208e92270f10841daba9ee38b0a1ed852bfa6b86b76022cf7eec230e80"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-16_linux_amd64.tar.gz"
    sha256 "2869562c407270d8308a3cc7f4c1860f07dd4e4e765c21949493339ff59126ad"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-16_linux_arm64.tar.gz"
    sha256 "3003d1a62cb25901d5e31479c4bbea92a1f3251afd0fc9804b21f423a4a5c0c2"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
