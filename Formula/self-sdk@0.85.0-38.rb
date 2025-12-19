class SelfSdkAT085038 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-38"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-38_darwin_amd64.tar.gz"
    sha256 "b689ff4f6654bfd34396ba0ec1421f006192481f7fc9a22595d6508fedd43a04"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-38_darwin_arm64.tar.gz"
    sha256 "1cf10d180c904bd1ee482178f4e406ab3cb23cc79c45885fcf20edc320ce9603"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-38_linux_amd64.tar.gz"
    sha256 "24af9d0d5603b64db667266209132e8624aa910657dbaf5e14e6f6afa0ac8c00"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-38_linux_arm64.tar.gz"
    sha256 "7d17607654e5d3962735e4e0f74618b7675c53d156d10605b7741cbd662e8937"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
