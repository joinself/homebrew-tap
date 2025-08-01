class SelfSdkAT08505 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-5"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-5_darwin_amd64.tar.gz"
    sha256 "18120f772fef9c6deb75df83dfe9a2f67b4cdfd87a2c5d14d6b2c31707dfd087"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-5_darwin_arm64.tar.gz"
    sha256 "bd746082d31a58a52bc2e954bd0d4ad3c8a8076b880d557f4d462a04664808f9"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-5_linux_amd64.tar.gz"
    sha256 "ace55884ceec83b80b5301fb746380da9ce95bd2433b10b4dc8c2ddc7ecc47d9"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-5_linux_arm64.tar.gz"
    sha256 "c13bc2e77e1e8a444107e2a35fa4f77f4c96cca3df09f8dc3baf189eaf947e7c"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
