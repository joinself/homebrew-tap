class SelfSdkAT085055 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-55"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-55_darwin_amd64.tar.gz"
    sha256 "f765fb85a9d846c40cad5aa37cdc89b4f846f583af5ace9fc1d8af7881f4e37d"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-55_darwin_arm64.tar.gz"
    sha256 "9a6ada6072340b24d2e6142bed8f32767699672d4da327b9f38fb4f51922bb70"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-55_linux_amd64.tar.gz"
    sha256 "702caaad773d0c56295b38d1bf967c282cb018aed78699d34b4dcbf95d27bd44"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-55_linux_arm64.tar.gz"
    sha256 "5f6334b074e1e97970da9b7b80844658f5050d1bad355d16360720f63253db88"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
