class SelfSdkAT0630 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.63.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.63.0_darwin_amd64.tar.gz"
    sha256 "c733d05463ac0b7d225d230797a0d5ab4ae7fc375f6322220f261508ab4c3279"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.63.0_darwin_arm64.tar.gz"
    sha256 "fe86142deb8bf0346073dd7fee366abab1bc396347348e29a170d37bfbb1c114"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.63.0_linux_amd64.tar.gz"
    sha256 "2f3e158317a92ea923e73f09a93cc914762275da70e31bf9bda58611f4fb2c4d"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.63.0_linux_arm64.tar.gz"
    sha256 "0fe932b66de9637121907c3d983b4b311a743d78f33ae56f25a8ccfb8ca70b5a"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
