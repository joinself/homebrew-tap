class ZktfSimAT0230rc109 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.109"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.109.tar.gz"
    sha256 "dc4cba226383ec82e36c60f5058ab2d1d32322af76b13419bee1cb3871d8a80e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.109.tar.gz"
    sha256 "a6e9fcd870cd3338e5a0cae2d7c494fa60eec93944969359cee726f6264c5ee0"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.109.tar.gz"
    sha256 "8c378d37d092c6d04b7b9cfc366631b89c5929f5f7db8a2545ecea0bda965bc6"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
