class ZktfSimAT0006624ee4 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-6624ee4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-6624ee4.tar.gz"
    sha256 "52c8f1b1ecd1067d076a0af8ab3f119b8414fc6a8adde73005c99779cfe7f185"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-6624ee4.tar.gz"
    sha256 "c3c873f936e875989b9132f8d3d301ff84f97192e0edc24f50447483feffb677"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-6624ee4.tar.gz"
    sha256 "9d3d42027ea73662585d14a279abc80bb7c72b330e9876da93325fc38cff7b16"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
