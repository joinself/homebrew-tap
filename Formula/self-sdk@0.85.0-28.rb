class SelfSdkAT085028 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-28"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-28_darwin_amd64.tar.gz"
    sha256 "a91ffdf491f957f3ae5169c6bb562c45e00bea0b08de25601c478e3f01828b48"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-28_darwin_arm64.tar.gz"
    sha256 "393f58d046cc7e91b8e8c905d6a72e3fd02dca28e945e90999215f510ae57f86"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-28_linux_amd64.tar.gz"
    sha256 "a137ec549cffa5ec61237e236cb7b3012252c25bc36001f1074b181ac200936a"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-28_linux_arm64.tar.gz"
    sha256 "9d6d65b2fe9def61f62468bd942ab610bfb04accbd4c22a66979780b9fec16e5"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
