class ZktfSimAT000563835b < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-563835b"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-563835b.tar.gz"
    sha256 "171b731ad5c0b611af77e2c1991ebb1f2dacf0646fb6fe890a0d0439c7962682"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-563835b.tar.gz"
    sha256 "6344a7c49dccb6c135d088b2d17f7f4fc376a2fc3957a927476616747f817fe6"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-563835b.tar.gz"
    sha256 "6998a5a50a389bf64ebf6d07ab307a595c0832be13bbff8902fd50b950029c50"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
