class ZktfSdkAT000ec964c4 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-ec964c4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-ec964c4.tar.gz"
    sha256 "7a54227b2c54ad6276c8a50f128cd815a19d70ecf1b5257e550ab35775522d7c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-ec964c4.tar.gz"
    sha256 "c7d67af5d66f66ab56534f49bb36c020a3d82e873e25fec7ea1fa9095f632213"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-ec964c4.tar.gz"
    sha256 "1602fc9e73df660850962c15389d712b094d10dfbc10395f4c2e1261de386e96"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
