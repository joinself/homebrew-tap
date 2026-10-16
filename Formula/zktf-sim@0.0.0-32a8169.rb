class ZktfSimAT00032a8169 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-32a8169"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-32a8169.tar.gz"
    sha256 "46ea8818ffe4a8fa408baf3d4bd79bd33ae8271fc059bcf700914277857cb166"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-32a8169.tar.gz"
    sha256 "83dece273018226a0e3bb27fdc796a4ab5fe61cf4cefaf80199b6c5f6b1026f5"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-32a8169.tar.gz"
    sha256 "dfedd45e47ebec74bc15c9b16cdb15194dd0a79401fb86c43b4b52bce23d0963"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
