class ZktfSdkAT00060aae33 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-60aae33"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-60aae33.tar.gz"
    sha256 "7603a50cc7c16199b332a7d22e9ee0f4341636ff7a92e49614c9fcc61d5ac900"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-60aae33.tar.gz"
    sha256 "60ed2151a64b0cabdaab36b7236d8c5256f470d144288e466f9fc1f375061da2"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-60aae33.tar.gz"
    sha256 "b9215f829bed7e4c50e90a15bbea642df04eabae252b85dc3fe5682ae290e198"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
