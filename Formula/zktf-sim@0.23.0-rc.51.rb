class ZktfSimAT0230rc51 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.51"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.51.tar.gz"
    sha256 "90bf448468e473d1fb029b3a69eb82d99549e570ea1482d70de57f8be665e187"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.51.tar.gz"
    sha256 "16a37e6ce4b4c9e0fa7e41a4cda88058e6d0f199674e3a8feab91abb429ebecb"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.51.tar.gz"
    sha256 "c211395bd8bf178560527a8868bdb59597c2e0b78d19ae8e34e94839dc0ec21e"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
