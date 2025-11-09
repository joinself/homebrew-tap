class SelfSdkAT085021 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-21"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-21_darwin_amd64.tar.gz"
    sha256 "b960b00c43ab306f0757b7d062c44ceb44ac48f44d9e1837a591da125f8f317a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-21_darwin_arm64.tar.gz"
    sha256 "a766393de8f1d8bdcb7fcf544cc45362d68411d0efd5b19eadd22f17959398bd"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-21_linux_amd64.tar.gz"
    sha256 "844fa18e03d7997d2efdc7951b20b0223617d06d9ca7f54e376c9916c326f3b0"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-21_linux_arm64.tar.gz"
    sha256 "28c9f691fbde6b7aa87b2787fe47ef54e30c28c19c7cf65879ae455151c530ac"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
