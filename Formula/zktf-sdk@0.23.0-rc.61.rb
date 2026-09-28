class ZktfSdkAT0230rc61 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.61"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.61.tar.gz"
    sha256 "8a792448732e37db2766f4f699b1db3fd142eb2902b61568e4c313602acd3002"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.61.tar.gz"
    sha256 "23f7a09a2cda4c5d99886a49d494440b820766aa4bb652e81472718d762cb0e4"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.61.tar.gz"
    sha256 "bf24f71a71063004d20e1bbc9005e03b0732cdb33a91d5b5f46fcbb40e96f835"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
