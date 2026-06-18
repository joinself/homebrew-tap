class ZktfSdkAT0230rc2 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.2.tar.gz"
    sha256 "a4c0e6d092eb2cada641dac54b8531d0f96467d7780db4a3fc3e669c9754b882"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.2.tar.gz"
    sha256 "7e1755fbc8c8b5e1788b9488acdc142299a4c1ee84efd353f83f05183daed8b1"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.2.tar.gz"
    sha256 "e3b290888315a87eabe4adf42f0f842326327bbf90afeb25019dd85561f50bf6"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
