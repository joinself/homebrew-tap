class ZktfSimAT0230rc1 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.1.tar.gz"
    sha256 "7d884dc374428752ccf1bd45abc80338e8e0c41acac3107b95981436a9d782ff"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.1.tar.gz"
    sha256 "0f8a8a2df81909f3279b5d14d6fd3416fa458370ee7ebf6dbce47142da7c4684"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.1.tar.gz"
    sha256 "3250c8447abfb4304b99755390096a2086b1f9fab1b0caa51e1b08609e369efd"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
