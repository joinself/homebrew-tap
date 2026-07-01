class ZktfSdkAT0000228455 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-0228455"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-0228455.tar.gz"
    sha256 "258bde42bf96a83aa02811f02b1b0ff074b00420e4e4ce0e7a8e002efb749862"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-0228455.tar.gz"
    sha256 "52909e463a89904c99ee69a122e066c3c3b524bbff9e3c3030c87412976a3ae0"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-0228455.tar.gz"
    sha256 "cc7febd5d1d2fd713cdbeb9da277223679b850080c25ae06bcd020d5d25b24c8"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
