class ZktfSimAT000f7d6afd < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-f7d6afd"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-f7d6afd.tar.gz"
    sha256 "6c57c8e9eefa3fa5cd8eb72417c1021f45ee5f160b6cdcae35bb9f8c901878c2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-f7d6afd.tar.gz"
    sha256 "d1eb6ff688673fba50d5f0c168cb94e848a902c8915cc4614ac727e232626590"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-f7d6afd.tar.gz"
    sha256 "e4caad1a2362629d21fb0b5370fee485b12911c3e5493387964f30943cc511ad"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
