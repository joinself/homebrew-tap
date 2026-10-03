class ZktfSimAT0230rc71 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.71"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.71.tar.gz"
    sha256 "f9de3cb428cf466da5393482f842e835c5379a722edc27983b98fde9c350e495"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.71.tar.gz"
    sha256 "685302ea725bd7e1acd2d7645d88b59c3a9a3f8f057e67d7f323499a14e3795f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.71.tar.gz"
    sha256 "e77142a4352763e9f3e454b4273a12f8811bbd0892f8ffe01b129dd702703462"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
