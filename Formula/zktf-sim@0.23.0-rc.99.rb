class ZktfSimAT0230rc99 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.99"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.99.tar.gz"
    sha256 "cfa0f3e1b171d49290829f876ff1d71de673e161253ca4398d6f51cff980aa8e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.99.tar.gz"
    sha256 "ae1a76b9cc68b907db58c7a040a7b68d877c340aa7bb51420d029ad8d3064afb"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.99.tar.gz"
    sha256 "1b1bd9768ad8db500ff8fbf144322121f1ad18e7fde51f3c9c3b62377c11f03e"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
