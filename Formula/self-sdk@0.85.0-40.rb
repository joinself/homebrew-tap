class SelfSdkAT085040 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-40"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-40_darwin_amd64.tar.gz"
    sha256 "969c807e60d81a09042a8b73b19d889e76dd736e0f303dcb6e2b1a98bf4664a5"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-40_darwin_arm64.tar.gz"
    sha256 "372a9ab069b32b5e00624ea93b97573850eb18100d654edd1e9a417be699a3e0"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-40_linux_amd64.tar.gz"
    sha256 "7e81e124908fcfc10bac8aaea75da54199bac98d6d3c96baef4d9974a604ffaf"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-40_linux_arm64.tar.gz"
    sha256 "d9aae4e97858ed77e6dc36f685f45e7ac7bc7cee314a574573b5e9e4fb059bc4"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
