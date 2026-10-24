class ZktfSimAT0230rc88 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.88"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.88.tar.gz"
    sha256 "2d4794814cf872efd38bfcd151f66462ae6604966ba45e2a7001fe885a27b941"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.88.tar.gz"
    sha256 "9b54ab0ccd7bc67502bcda908478670fc37d7263a6d67199ca3cc8b0dc9bc7cb"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.88.tar.gz"
    sha256 "6df6454706bdf460a47cbd478237d8af0217885f92eb9d7b2aaa0fa1a6cf7d1f"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
