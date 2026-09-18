class ZktfSimAT00054f0758 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-54f0758"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-54f0758.tar.gz"
    sha256 "b317cda1d150eec0d3ced22f949dfffa1bb84c74b41a7d0c82f50b39c023130d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-54f0758.tar.gz"
    sha256 "d3ea8a99b5ddf07d06a0e1b91b55adf54e848cdcfb93cd9da373da89b36dc1af"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-54f0758.tar.gz"
    sha256 "b6b331e4cc2eab50dbb894b13330412864e760580e862c2228850ec4b962a781"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
