class SelfSdkAT0510 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.51.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.51.0_darwin_amd64.tar.gz"
    sha256 "c9b1440caaa33099718f7a2065773666b2280fc031624d6bf38dbca25915fcbb"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.51.0_darwin_arm64.tar.gz"
    sha256 "9b11d8a920d48ec30c12600ec94f53dbd6d8319cc88cca0e02b0b77657ddc9ad"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.51.0_linux_amd64.tar.gz"
    sha256 "a4bb2d4a061208042f381558019121a84b1132b78a971187079f449b27057087"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.51.0_linux_arm64.tar.gz"
    sha256 "ca545aaf8679ad1a8c1945da040ad09b8f5e39f6ae64b8bd2dec25e9b65ebfb0"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
