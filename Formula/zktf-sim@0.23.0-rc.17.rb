class ZktfSimAT0230rc17 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.17"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.17.tar.gz"
    sha256 "ffdcf2ccbfd760708aa260e7cd819d944a009ea3ffb1ef40bb089fdc0f1cee73"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.17.tar.gz"
    sha256 "e512ea0eb994a974bf2d774756ffdce5f854a8556d3ddac461a355511bdc5c89"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.17.tar.gz"
    sha256 "33c581972e0d93c18e933bf4a1f37a4a316b32e3bc65ce6eb857b7a0ceea31a1"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
