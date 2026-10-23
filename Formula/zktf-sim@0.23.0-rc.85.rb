class ZktfSimAT0230rc85 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.85"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.85.tar.gz"
    sha256 "d2e58511bdf126fbf31530ce89460aa3aaf4047e3955eb48a8efb848bfd0dd6a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.85.tar.gz"
    sha256 "01f1a89908cdf7191c37beeb62efbca409239a84a57dafa323378b823cc573ca"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.85.tar.gz"
    sha256 "37e6451c6639c92efdbbe2ce573e8148b148b10e00db05873df17615f0b29f33"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
