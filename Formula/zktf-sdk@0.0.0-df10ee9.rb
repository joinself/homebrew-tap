class ZktfSdkAT000df10ee9 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-df10ee9"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-df10ee9.tar.gz"
    sha256 "f23944c29737de30bf45b8a8187efb5574440dbee727424c01b31ee4e0e75272"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-df10ee9.tar.gz"
    sha256 "be14595162763dc1d3cedb333c0992f179380134c08a387223d7894546dd72f9"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-df10ee9.tar.gz"
    sha256 "21dc00ef7c1d8fae4fdecacfe40bc0fb16bb05ab2360ed9d9f8dc2d500716a76"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
