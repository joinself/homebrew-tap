class ZktfSdkAT0230rc20 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.20"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.20.tar.gz"
    sha256 "b9455bfb59aa0a2352066a8e7b07c0cdaf7808e42189284a24848f84df04d2d5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.20.tar.gz"
    sha256 "ecd3d8c2799aa447f6a651ff8fde6f15bde7d7b2a3faa4def2451800df5bd18b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.20.tar.gz"
    sha256 "329dc0947fdade0e2e147940e5a28322f81f4ce81ab371ef60323de85b1478e3"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
