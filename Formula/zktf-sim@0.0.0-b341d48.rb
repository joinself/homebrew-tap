class ZktfSimAT000b341d48 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-b341d48"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-b341d48.tar.gz"
    sha256 "3521e834f7e6599bb70cd530bd26b978e25ad2eec7df3a778414188b369cf1f8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-b341d48.tar.gz"
    sha256 "43b005400cfc3bd89f49820e0a91c20ee0a607d526397cd1eeb2f0583d209668"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-b341d48.tar.gz"
    sha256 "3b4edf4700dbcfb00863a3b796b33392ed5fb53e1f949fd8d77539936891b208"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
