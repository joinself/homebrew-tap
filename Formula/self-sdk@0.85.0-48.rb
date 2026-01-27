class SelfSdkAT085048 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-48"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-48_darwin_amd64.tar.gz"
    sha256 "3086dc6982abc19dfbd710766f18a801dd77faad28dbf711af892e89f3235330"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-48_darwin_arm64.tar.gz"
    sha256 "9c5f8557f39938e041e0c03be1d20c123ee9bf5ba12b1876a1d55cb82d0fdf63"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-48_linux_amd64.tar.gz"
    sha256 "d069b63e849bb4c7a6a00266840ac3af7228555d07ba63703113de3af5199977"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-48_linux_arm64.tar.gz"
    sha256 "5b8fbb62dac486e81a3a2431299e8708f9c429cfc718f633784ac374f14755de"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
