class ZktfSimAT000d4136b6 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-d4136b6"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-d4136b6.tar.gz"
    sha256 "085fc222d009103decab3bcd8274cd0386df882d244b200ff7fcd36d3747a42a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-d4136b6.tar.gz"
    sha256 "0590d4769e93c1bf72ec8ecc9c149e30502d04a183a83b3db89aa5f060e9b088"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-d4136b6.tar.gz"
    sha256 "4911a316c91486cb564d27f97e9ec242755eb256f03b5096005b8fd6108a0f70"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
