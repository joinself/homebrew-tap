class ZktfSimAT0006a8f98a < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-6a8f98a"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-6a8f98a.tar.gz"
    sha256 "a4b44fdf599c811e2401e9c7d8bfd75d79ac3ffa95c7edda044c74096ffce64f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-6a8f98a.tar.gz"
    sha256 "e6247327f8cc2186dad556c65616b2166bcbcf10d363d3875baf48a005ebc675"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-6a8f98a.tar.gz"
    sha256 "6a7a1eb5ff6a179bfe6a70248d546f6e25811f1e84c2571762a6ed0253cf465e"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
