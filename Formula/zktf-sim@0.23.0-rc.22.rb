class ZktfSimAT0230rc22 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.22"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.22.tar.gz"
    sha256 "4a98de28b331cf24f936382a8e2bf4b990b9867c96526eae51a79d56c4ecc637"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.22.tar.gz"
    sha256 "d3da4059523c6df03a84d29aa0d25cc73b391b73811ad098ba98a62e605ad0ab"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.22.tar.gz"
    sha256 "2ad775c58d94e59ce01a6720a64a0e408c5b9a306b60240eda80765dcd9b249f"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
