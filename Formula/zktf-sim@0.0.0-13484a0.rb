class ZktfSimAT00013484a0 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-13484a0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-13484a0.tar.gz"
    sha256 "3d733a55f4a408c14a627641082dcf7c240837bd5f220498e715144bbed45683"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-13484a0.tar.gz"
    sha256 "5a1489bfd860b1719c0615f4cb84abbf2d34ef586442ce0eb90091105afeb9c9"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-13484a0.tar.gz"
    sha256 "c96b833ef247e5a75ec1c996d8d44f86599d806b103ee5793df913ffd0ff125e"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
