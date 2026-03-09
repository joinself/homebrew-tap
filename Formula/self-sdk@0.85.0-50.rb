class SelfSdkAT085050 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-50"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-50_darwin_amd64.tar.gz"
    sha256 "44d653b2703813027fdc3819f6a2a0caf92f4e01ad5891081c5e88df4e1730dd"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-50_darwin_arm64.tar.gz"
    sha256 "fd8331eb80950b7cb5f9544b76b54930d93e770f087fdc29e5686b57bb3072ab"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-50_linux_amd64.tar.gz"
    sha256 "dc07c0e9111b25d1f73b7214c4db3fbb8d3628cdcdd6ffa61ccbf41e87089ec0"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-50_linux_arm64.tar.gz"
    sha256 "545e2ad0e0a326fa62e9c3712111361025d9ce41ca0807f07d13d9c2e37683e4"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
