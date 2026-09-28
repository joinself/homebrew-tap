class ZktfSdkAT0007b932e9 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-7b932e9"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-7b932e9.tar.gz"
    sha256 "4c54ad33bb27dadb3eec576dc48a785d6fd22e01e2c10f2b9d07dc0b8bcc41d5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-7b932e9.tar.gz"
    sha256 "37b05ee9814efcdd2cf6e95d3107193125ea6298deda35a4217ae13ee124ddcc"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-7b932e9.tar.gz"
    sha256 "9632993f834b5669eb210b46fd448668dc468bdd912d7e577c45b7dc7ce0d233"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
