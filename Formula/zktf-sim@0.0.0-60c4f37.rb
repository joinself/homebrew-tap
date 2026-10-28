class ZktfSimAT00060c4f37 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-60c4f37"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-60c4f37.tar.gz"
    sha256 "ca42012a8228575987562e0762b530398d50fa49c17c590fc75db0846f1cbcc9"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-60c4f37.tar.gz"
    sha256 "bdb866254460ad9757ae3e0249e87e579ff27d587cdc1fcd1da4c20dcedaabfd"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-60c4f37.tar.gz"
    sha256 "da87c5f04048c0bb4b09927ac0ee82e7feac02483d54c8d870204713547400ff"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
