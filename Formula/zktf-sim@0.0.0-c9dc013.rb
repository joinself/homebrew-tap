class ZktfSimAT000c9dc013 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-c9dc013"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-c9dc013.tar.gz"
    sha256 "a81821012e8c3f36b91c2b678a0968495b6d04809d0d0e90c61786a046e24bd9"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-c9dc013.tar.gz"
    sha256 "e82c83bce8ec7c00972c28d26970565406a4c15448f35130fec43055e3509514"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-c9dc013.tar.gz"
    sha256 "9b9c9758b05b9c9935d3f5ff6f36c16ba40c4ac35b2898619c2c88a2788d4d9e"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
