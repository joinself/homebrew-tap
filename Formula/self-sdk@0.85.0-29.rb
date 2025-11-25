class SelfSdkAT085029 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-29"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-29_darwin_amd64.tar.gz"
    sha256 "0af4a771ac8f6716d0e42ef0c58d1dc9a42557373e0669526f6ebec52d3b215a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-29_darwin_arm64.tar.gz"
    sha256 "d31e8fd8e0b596c0a3e0651108c622a7d9c4bd7af36bbed24e9ccecf0b1481cd"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-29_linux_amd64.tar.gz"
    sha256 "daa2f95e1c3726c7158cd9ed3eb6d606f3179f11de9fbd153ef10a3a2f1ba25e"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-29_linux_arm64.tar.gz"
    sha256 "37e2537de36d55e99551335175f1c19a6408665594113ce7448e1583b97c33aa"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
