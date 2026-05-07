class SelfSdkAT085059 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-59"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-59_darwin_amd64.tar.gz"
    sha256 "99a4e2c7ad9193a0c0fd4ab8143496ef20879227ded945706c7bc6792d0856de"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-59_darwin_arm64.tar.gz"
    sha256 "66a55d5ef13b91da98cf6c770d48b3b2dd19f3756582d721e2809bfd65d589ae"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-59_linux_amd64.tar.gz"
    sha256 "7498cd1104c97c9fee1f49ce3337604b048f695bf4c7950bc5616bf6ebf5f733"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-59_linux_arm64.tar.gz"
    sha256 "efd370dfbc0bc50e5a2ae329d6019cb9c4239dc657e582fee80356928007d14b"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
