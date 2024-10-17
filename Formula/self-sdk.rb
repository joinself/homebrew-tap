class SelfSdk < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.34.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.34.0_darwin_amd64.tar.gz"
    sha256 "e10d9e6a64392b4933a9e881ed79584993ad76af0bd8da57d155bb3a2e18a779"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.34.0_darwin_arm64.tar.gz"
    sha256 "1bc599b8b73a304eba9ea41db0fb919a726968c9f7e614dd5be8d9b4a6d204d5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.34.0_linux_amd64.tar.gz"
    sha256 "1e6bd0923c38be842a0cb4849d33f516f1ff988828c4e4fdc249358e69959e9e"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.34.0_linux_arm64.tar.gz"
    sha256 "572de082fb3a47da89ccfdaa7563556d5ebaefc62e448ab26c7cd97e23018495"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
