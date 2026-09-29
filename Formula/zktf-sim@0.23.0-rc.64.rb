class ZktfSimAT0230rc64 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.64"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.64.tar.gz"
    sha256 "496c14b2f0cd261f000ecf42a565fb4cafdb40c377a69583160ca84bf7dc9b4e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.64.tar.gz"
    sha256 "2e3c9157c94ddf3b19b0e89865e34148a37bccfe5a1a104b9464ca9d046128b7"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.64.tar.gz"
    sha256 "9e2d67d10ae331bf4b957a8990b8091f36b1a0ec8620d5538a268c6c2b2ab9fb"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
