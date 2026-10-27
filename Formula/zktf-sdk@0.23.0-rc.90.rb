class ZktfSdkAT0230rc90 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.90"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.90.tar.gz"
    sha256 "6f13965f975b470fa98b9e0c1292248170bda95ef8cf165d286934899a1e63ba"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.90.tar.gz"
    sha256 "10b9cca2772e89d5b632a0e62f30cad40c210525653ba6fd6ab38d00607bccfd"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.90.tar.gz"
    sha256 "2800e40e80a76caac585dd5690816b3a5b56d4cbf86e4710e95fb82ced878b17"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
