class ZktfSimAT0003df9b0d < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-3df9b0d"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-3df9b0d.tar.gz"
    sha256 "39ac6125d48fdd758e69fcc78d842fb70ebcb76a5254ffc8715b4325139a8e3c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-3df9b0d.tar.gz"
    sha256 "3a9693ffba19cc9b5b424adf13aa4c7131862bd526a010db33c1c8cfb24394ba"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-3df9b0d.tar.gz"
    sha256 "7c2fea67c45ce5b531d0b369bed92c811a6cb0d21f1b369d8cb3de1674f5a025"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
