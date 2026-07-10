class ZktfSdkAT0005619655 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-5619655"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-5619655.tar.gz"
    sha256 "9572670fb29e29d5cbc8fe564750d67caa23d866a8a278730bfffabc6348af71"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-5619655.tar.gz"
    sha256 "2fa5017e65724a5b454636cb9da80276af19f1e064cd7f9e624f440cc7444ff6"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-5619655.tar.gz"
    sha256 "8202b933118d37a0b846ea087cd8000994ccc406d8f59f550b76c7ba1c423861"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
