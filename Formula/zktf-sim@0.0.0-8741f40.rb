class ZktfSimAT0008741f40 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-8741f40"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-8741f40.tar.gz"
    sha256 "9b6f305bcf0f49922de67fcf984b39996ab4395f8fc8d915cc2aba9d5d681156"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-8741f40.tar.gz"
    sha256 "0184652956723dfb9682c3dbde399c023703594f9aab961e3dbd9d6aea944eef"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-8741f40.tar.gz"
    sha256 "3d5880eff047b28a88d86e7f66137bcd1d44a1a5fe1483acab6973d3a7fb57af"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
