class SelfSdkAT08301 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.83.0-1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.83.0-1_darwin_amd64.tar.gz"
    sha256 "758fe1d842f9a082d4408246d20bdb0262388782f306478596297b93894e36b5"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.83.0-1_darwin_arm64.tar.gz"
    sha256 "55677cf5f827cbe633d99dff3710b57c9b915a21fa010e0d0378430eba8a6384"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.83.0-1_linux_amd64.tar.gz"
    sha256 "7cfa6cba2d34c0365046edcec3b6663e6f4e954aed36b9f50376210b423a8f34"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.83.0-1_linux_arm64.tar.gz"
    sha256 "2dc2d23e42fec33af0d0f513de3ad5c14cd670b99d6abf930cf6a374331f7f84"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
