class ZktfSdkAT0230rc38 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.38"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.38.tar.gz"
    sha256 "d4dfd2e2efd7172c0cce6eea5763a3f700784a10e32a9112c89da243febb28d2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.38.tar.gz"
    sha256 "68a8f3321ef27cfac97331a1d0662387aaff827a4b4cf2f3b23e02b0dcb45f16"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.38.tar.gz"
    sha256 "056e9920ed51990ae7f44482e05ff2c379e3c9ccb9e7cd7e49cb4fc274a779d9"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
