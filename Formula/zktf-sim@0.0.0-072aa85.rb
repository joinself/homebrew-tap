class ZktfSimAT000072aa85 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-072aa85"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-072aa85.tar.gz"
    sha256 "b5d7df0919787e6cbdcb615c94e1a599cd32a0bbb38abd6d1b14244031db7685"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-072aa85.tar.gz"
    sha256 "c4e218df4fdb18ff8f7beb407e0b57f1e89c594e1bd56a7df9938811dced1418"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-072aa85.tar.gz"
    sha256 "c848a55c5be5ad5bb359a07e678531e55308478fe9294d207d480b47f0926c88"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
