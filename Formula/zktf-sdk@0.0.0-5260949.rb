class ZktfSdkAT0005260949 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-5260949"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-5260949.tar.gz"
    sha256 "24ad49126d6a51c4bfcef67ac5eb842e2bba8a5a86995c342bdc95e5222c10af"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-5260949.tar.gz"
    sha256 "68f67bde0ae095989a578e6f3b7a357e19d8ecc6b4f79f7f65dd3afe99d32c13"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-5260949.tar.gz"
    sha256 "6bd90b1442ec52edd95868e2613b2083f112268fcc23c8a37de21c86dd6421db"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
