class ZktfSimAT000ef926b5 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-ef926b5"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-ef926b5.tar.gz"
    sha256 "3725f401236210bf11903fb74a6c8a78bac78f2cc19b0a8bbeaebb18fb82e8ea"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-ef926b5.tar.gz"
    sha256 "24db5dc76360fcfa56351f2ed97dd292901a8fe1510c88027668532f3bfed5e2"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-ef926b5.tar.gz"
    sha256 "9dbb15c5f1fb279e1d62bbb733b083e5a40b44397c6260121cac23c214f82a45"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
