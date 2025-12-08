class SelfSdkAT085036 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-36"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-36_darwin_amd64.tar.gz"
    sha256 "9e71f11d2e1d5a34cce7e5d5da74a94179260f436deec58b48d5ba656ea5bbf8"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-36_darwin_arm64.tar.gz"
    sha256 "bd2deccd97ec2e21727cde3418d163eda7300857377158f7258af79402e4c986"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-36_linux_amd64.tar.gz"
    sha256 "f9e003b254a6b4d8f5c47439e103c3bd0a6b4964752d60d4027090810663a554"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-36_linux_arm64.tar.gz"
    sha256 "782c13acb71a90460e9758a7ed10b8a1a0565eb99f936f9cc5375133a9b7c6bd"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
