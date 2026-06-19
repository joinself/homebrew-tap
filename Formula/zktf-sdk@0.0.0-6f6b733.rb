class ZktfSdkAT0006f6b733 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-6f6b733"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-6f6b733.tar.gz"
    sha256 "e65c238746ee4531aa669c0563ee20c218625784196fa5499355dddf649f8bc2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-6f6b733.tar.gz"
    sha256 "8bd4706fd5a326c384f20f46ac920408eb8d439128661f6ba79ae445e304c53b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-6f6b733.tar.gz"
    sha256 "71756bdb7622762d74b6e5268725f5ed2cae4414d497fd24e281ce876dfadf95"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
