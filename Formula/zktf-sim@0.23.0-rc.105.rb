class ZktfSimAT0230rc105 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.105"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.105.tar.gz"
    sha256 "9bc4a6c19fa1e632f02955d885efe67bb94e1d01bac62fffbb309c70bf5bef07"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.105.tar.gz"
    sha256 "5724259615a178dd9323a26ded9f6f75c37b8204b94cd2e24684d36a6114e4ea"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.105.tar.gz"
    sha256 "1b76f9427faf9837661bb17ac64fcdabf751262c254e54e4989799df519f640c"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
