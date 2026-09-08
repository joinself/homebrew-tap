class ZktfSimAT000f0634ea < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-f0634ea"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-f0634ea.tar.gz"
    sha256 "d8baac10fe0fcd845690d280def3a5cd54cbd0f66b879d3f026c8fbe4a188663"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-f0634ea.tar.gz"
    sha256 "4bd24ac6c7a1b09f7f0810d29c24ecb012da9e3d692bf9fd7d927c86532c1836"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-f0634ea.tar.gz"
    sha256 "ae73abad26bba5291380dbf40274e7618b91b7332183ebe85f72b669d8538c31"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
