class ZktfSdkAT0002a83b81 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-2a83b81"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-2a83b81.tar.gz"
    sha256 "ae57503e24a1faeaaec4b8acc3b65d9054800b05b49ddb818e5c44be95f591de"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-2a83b81.tar.gz"
    sha256 "2da0040ad83804639fcdd54428404fb2e514c059f375bade970dd370554256ee"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-2a83b81.tar.gz"
    sha256 "5240560d420845f2d3c014c963a45470500859ae249e1ea85cef44c6c592c2f3"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
