class ZktfSimAT000add68d6 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-add68d6"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-add68d6.tar.gz"
    sha256 "0fb0576dc33c5b7863f886ad5b7dfe7591d58b57cf0daec58b0e3e237c9654d2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-add68d6.tar.gz"
    sha256 "85aa896707bd457425f31b7a6568b30937db28049586e2dbb0520134d05718be"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-add68d6.tar.gz"
    sha256 "ede7b54cc8f597cfee73e91a08f0d3fef3993e1e7f1f417a021f616a0614d0e6"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
