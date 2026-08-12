class ZktfSimAT0230rc36 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.36"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.36.tar.gz"
    sha256 "5eac5b18ec8bbff6e3190b2c4a7e9e3c5f09e38f5bc2912805926cef7eda5235"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.36.tar.gz"
    sha256 "6fb0c16d36066d94316f5393145f4168f1f5d70024d4228ae49464f0bb6c38c6"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.36.tar.gz"
    sha256 "32c16786bcd5e5411edb8a550d8351d2ace78306b8f507cac1d18811d6c013aa"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
