class ZktfSimAT0230rc82 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.82"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.82.tar.gz"
    sha256 "b5df4d1789d10841ddaefda19148e903bdb224e40c2cbcaf6d7b7aba0f9a78da"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.82.tar.gz"
    sha256 "dc8dc5453c291d4f074a7bd0c2aacd665224a8935e73879100f1c8d2846496ae"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.82.tar.gz"
    sha256 "eb62548006fdd36dc6e3fac6793a030348c22535319590ff73a5941a4bb4cb6b"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
