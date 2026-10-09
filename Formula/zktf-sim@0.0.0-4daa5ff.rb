class ZktfSimAT0004daa5ff < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-4daa5ff"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-4daa5ff.tar.gz"
    sha256 "71595198d9a3e81d1faf77b1de296ca2b3e34bc659eea727c23401b55d5edd83"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-4daa5ff.tar.gz"
    sha256 "011ba194aef0cf2782cf53c3c1f9bbd3315b4c38c4f899ef7e4dfc3a797ec43b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-4daa5ff.tar.gz"
    sha256 "1b9f6c5598f2027c27f52f64e8e04b616d254662390d22d9931d180857c49734"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
