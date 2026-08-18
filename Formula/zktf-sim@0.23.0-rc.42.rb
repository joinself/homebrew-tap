class ZktfSimAT0230rc42 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.42"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.42.tar.gz"
    sha256 "30bff7d9f6f784366cebdc1566afce6733d6443a68da7e82152e5d3ad4cf902e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.42.tar.gz"
    sha256 "067d3dcce308f73c2ffb88839ed9eee0d7d47a013af33cb28fed8055fed9764f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.42.tar.gz"
    sha256 "73c3fe950614f339a3121c11972245b8359292d5b43bf26483981b5de6299626"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
