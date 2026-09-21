class ZktfSimAT000160f259 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-160f259"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-160f259.tar.gz"
    sha256 "b7e49f61ed56dc2915bafd55160246f85422473d714e5337c36a1ab853e47e83"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-160f259.tar.gz"
    sha256 "19fb285b59d875a6d59f1b44bcbfa07adbd5cba778baace27bc6519878d96879"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-160f259.tar.gz"
    sha256 "596b344d19f1218eeb26be72da07a5d1c204ea9af5ad92318a71750f0a692613"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
