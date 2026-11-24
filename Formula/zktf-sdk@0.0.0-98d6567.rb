class ZktfSdkAT00098d6567 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-98d6567"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-98d6567.tar.gz"
    sha256 "d95d5ecd1d5444f4eee2ac7c1b82a797033d7b1d06d4a976bafb1ae2e5b619ab"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-98d6567.tar.gz"
    sha256 "b89421b61155294cd4dad34f29a1949858cbe1f974d811f767e63ec2e9a8b986"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-98d6567.tar.gz"
    sha256 "7b7390bf70611ee1ed68124153af15b100496e27f6e3bbe513243cc81f59ee8f"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
