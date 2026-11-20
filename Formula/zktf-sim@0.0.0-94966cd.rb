class ZktfSimAT00094966cd < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-94966cd"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-94966cd.tar.gz"
    sha256 "6659d35d94191b606f402bcbbf585e08859aeb32fbfb4c44488ee731d541fd4a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-94966cd.tar.gz"
    sha256 "80f8529d632a1e8acf3b08e7ca52dc08ab830f70a8ccb52e44f28fba98577e51"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-94966cd.tar.gz"
    sha256 "77017f1b8b2b9abf6344024b3d6d5edc80b033556b3197d3d32d416f91cd21db"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
