class SelfSdkAT08503 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-3"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-3_darwin_amd64.tar.gz"
    sha256 "a7b29addf76b3cfe0fcdbe4e2a2443a4c23b676a5ec5ba54827a33a3903688ed"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-3_darwin_arm64.tar.gz"
    sha256 "0ad323d4139b07b3dad3b2c59a51906a29565b7aa29289c9800a3b27778233ed"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-3_linux_amd64.tar.gz"
    sha256 "916fdac66ad42150516a874fa3532c3eb9ad31448c3ad56bc68b4e48ea66bdc9"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-3_linux_arm64.tar.gz"
    sha256 "f5718d9588521c670f2b1b39862cb024b0aeadfef0c328c1f1ca03eb1414acaa"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
