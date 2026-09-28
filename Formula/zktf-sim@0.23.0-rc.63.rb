class ZktfSimAT0230rc63 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.63"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.63.tar.gz"
    sha256 "b2818d117aaafa7b99992e114043e8134b037cceac774a7290ad8b475fb755dc"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.63.tar.gz"
    sha256 "f3ac6b517d463d80b65ebaa3d67274e72f30c715e3e68e8f2fe02edf1829c7e8"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.63.tar.gz"
    sha256 "2dfe972dc9e0951b9536a966c4dca6660166992eb73d45e6771273cf9e54875a"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
