class SelfSdkAT0420 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.42.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.42.0_darwin_amd64.tar.gz"
    sha256 "c6964703782616f46269afdf1360ce04af04026129edee14e5b1f30c06db3403"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.42.0_darwin_arm64.tar.gz"
    sha256 "a7899e6e2996a30ca385c15a591dc0ab1f2dc4b56d4d67ca3604b47671a4fd39"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.42.0_linux_amd64.tar.gz"
    sha256 "b91d81f1a6597f3e30909f4ed410a2cb4d70a3ee5b7b52bf9423b4e9f92f5f36"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.42.0_linux_arm64.tar.gz"
    sha256 "60f68644240be697ab828f096e5f837ac2209638662be274228af2fb7ff42821"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
