class SelfSdkAT085042 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-42"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-42_darwin_amd64.tar.gz"
    sha256 "d834bce30c09b17f265ef0306f0653b7bfa399dca9e6299d18812f1e858ae980"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-42_darwin_arm64.tar.gz"
    sha256 "60b798638e3ea97ef340dd1093c88e156606df495dea3ace8d0abadf30510dc7"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-42_linux_amd64.tar.gz"
    sha256 "906af18fbcb2c062f4176bbe4b9b534516a4485d9899a52b03363da510c717df"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-42_linux_arm64.tar.gz"
    sha256 "86216643bcc15d7f1d8d85ea857817764747ca2ff1338bec599b91ca93ee42d0"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
