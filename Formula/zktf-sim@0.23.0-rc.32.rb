class ZktfSimAT0230rc32 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.32"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.32.tar.gz"
    sha256 "114c8a4fcdc566e507c923db91b5ffebab4af49051a88d0c0ed4b91d6a645f63"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.32.tar.gz"
    sha256 "23be2efbaa7b06b6d399088325c6994a3d9375bbdc3adffa6f1b17a49732d530"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.32.tar.gz"
    sha256 "fc54b370c36ce6117c90b2006cd028c801de8b01988203d661ecfc392080118d"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
