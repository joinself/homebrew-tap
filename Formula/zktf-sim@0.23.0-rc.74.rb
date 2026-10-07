class ZktfSimAT0230rc74 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.74"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.74.tar.gz"
    sha256 "2ae7c4b61b5af143608dab6e6927e60487190422cc41e376f1e9f5a1b8036a15"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.74.tar.gz"
    sha256 "341dacb623e880e8845ef4fe291e5a7788655feda4857c0a06f6127a3954bd0e"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.74.tar.gz"
    sha256 "938956068954cd0dbd162c2ffcf320e37a3f2773a55f48fb81224b0e725d9b33"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
