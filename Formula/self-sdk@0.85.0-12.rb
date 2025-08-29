class SelfSdkAT085012 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-12"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-12_darwin_amd64.tar.gz"
    sha256 "f5e3cda2f0e7131557bf73536bf380e4c8bb6799cfacea932469bf1aa44aeb35"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-12_darwin_arm64.tar.gz"
    sha256 "ff8f3ba2beae7c42e621a872471695c9ad5115418d1e85233613cd2ddfb5d92d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-12_linux_amd64.tar.gz"
    sha256 "eebd044b0dfffcf1a34f6b63fc0ebec5279ec39e3a2ef978c1da6184dbc28a81"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-12_linux_arm64.tar.gz"
    sha256 "87dbacadd3595b7c827ac2fd7147872a10420423143b529e585a8c59fe285b9e"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
