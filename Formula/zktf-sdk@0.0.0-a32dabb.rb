class ZktfSdkAT000a32dabb < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-a32dabb"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-a32dabb.tar.gz"
    sha256 "599000f0f83c35f41440a4209c05e5006b703d8d06f426fe308fba87c48ba9c9"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-a32dabb.tar.gz"
    sha256 "ea7057f8c441acbd06300301ea69c72296955a155db21d0e976f9cfe34e78fcd"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-a32dabb.tar.gz"
    sha256 "fabd49cde523dba8955e6717a4053be8abca71e50affe8957c6ee18cc7a44ac5"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
