class ZktfSimAT0230rc9 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.9"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.9.tar.gz"
    sha256 "1e7aca9e1b2fb3a8013d0100f236dfab94097f83582dabfeebc8bf78fd65878a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.9.tar.gz"
    sha256 "f63732b1f14b58ff64e8b8a3c32e508b9d349c74530e66ccaf7cd5fcf8656c46"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.9.tar.gz"
    sha256 "a5006b832b68f0cb7e56a0c6687919d4cdfdbf305b7c2aafd28f4c61a1e90eee"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
