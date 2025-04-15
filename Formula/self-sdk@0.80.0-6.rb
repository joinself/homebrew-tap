class SelfSdkAT08006 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.80.0-6"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-6_darwin_amd64.tar.gz"
    sha256 "0dd4b9208bd4b68d8678b1c66e87a1e72b50f3b8024e48695b652a57ddf31a02"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-6_darwin_arm64.tar.gz"
    sha256 "9ebaa17a539b993fee2157a01fdce2d6cda90131c29ee295420328ad4c6fb3bf"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-6_linux_amd64.tar.gz"
    sha256 "9d60390c1d83cab2176af146eda54ea23d9ccdc39be52374e79f60081bc6ed8b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-6_linux_arm64.tar.gz"
    sha256 "7488220246fbce76ba017663d7f8f1296848d2524db33eaa1de09cd02d5e736f"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
