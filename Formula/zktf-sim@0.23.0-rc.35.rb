class ZktfSimAT0230rc35 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.35"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.35.tar.gz"
    sha256 "02eea5e0038f570db36e3d7551db4df904f824d03c13ec6833a121805878ab57"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.35.tar.gz"
    sha256 "55fcc6fd86f0d5b7b2e19b1e730cd02b0c2af292d90d57e98eb4e43d2896b141"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.35.tar.gz"
    sha256 "a1b870762ba64afe4163f0ed46954df887303af8e926e75303850ecadb985a21"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
