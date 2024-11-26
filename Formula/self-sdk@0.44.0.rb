class SelfSdkAT0440 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.44.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.44.0_darwin_amd64.tar.gz"
    sha256 "d5212eba117c8ddef9a8724ede8b17a7f805eb2da91501603266bf1fbb41d2eb"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.44.0_darwin_arm64.tar.gz"
    sha256 "f93a5e1a59372d72b8e4431fda040f50c417566a18c7b35a16646ba0b49b3ec0"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.44.0_linux_amd64.tar.gz"
    sha256 "51c810ee2c403982244218d177bc7bbbf2df2889ec782dc73430ba0dd1497b5d"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.44.0_linux_arm64.tar.gz"
    sha256 "a0ee8e55c4b930db08ff68c8f649ce25b7a7eafad52b4c3a9da845f6f4c51c73"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
