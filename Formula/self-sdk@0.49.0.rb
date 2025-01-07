class SelfSdkAT0490 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.49.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.49.0_darwin_amd64.tar.gz"
    sha256 "04242923509cf29f4eb3058d382df63fab411f0bd581697176fe170e2d1e1998"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.49.0_darwin_arm64.tar.gz"
    sha256 "f9125f4e1e9e4420ce232d7611ae00d4d0e38d80880f50978388f04153a3623a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.49.0_linux_amd64.tar.gz"
    sha256 "21c5a076f70464825ed8ce721d8e9a99f381ca5fca5b1dc0653187f2ed91f469"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.49.0_linux_arm64.tar.gz"
    sha256 "15448293cb9590d6a0157439a3c117570b0035936203b51e0336e6f77f8a7607"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
