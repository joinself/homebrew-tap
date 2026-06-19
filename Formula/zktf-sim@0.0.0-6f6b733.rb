class ZktfSimAT0006f6b733 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-6f6b733"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-6f6b733.tar.gz"
    sha256 "d3a43628b6c5e6efb2b5a296e001023a91e19aaad683934a6a153d70905449fd"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-6f6b733.tar.gz"
    sha256 "1b58e380801b05d6f4002bd85cf77053406d5810c4cf926b8658691d88d4b61a"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-6f6b733.tar.gz"
    sha256 "7afe164964fafc48685896f6d3330426d46a00474313b4288ba73bd02b0b19af"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
