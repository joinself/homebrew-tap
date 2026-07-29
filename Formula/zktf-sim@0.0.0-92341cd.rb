class ZktfSimAT00092341cd < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-92341cd"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-92341cd.tar.gz"
    sha256 "24320f9680ae8115910c28bd69250e92fc7b3fdcf364c6a159aeb4b90efaed0e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-92341cd.tar.gz"
    sha256 "666e8f6b618e74f0057fee4458e80e343d46930fd02c504607f17f54d2bf0860"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-92341cd.tar.gz"
    sha256 "4702543254cb5949551ec47c719d9b1a7fd32f494d0c7d17258fe7b6c401cca3"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
