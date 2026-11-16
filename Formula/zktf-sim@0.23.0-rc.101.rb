class ZktfSimAT0230rc101 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.101"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.101.tar.gz"
    sha256 "469fa434a7a315c13c850ff82e41ccd8ff07d45bea5d8f3ce35704bceb5b766d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.101.tar.gz"
    sha256 "d0edf4aaad06ee0b3775933e53bfb96e24e6965dd602c0d7b1b6f87cfc5ed149"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.101.tar.gz"
    sha256 "6161474d9e826f8226c55b4dbb4a94fb5b17c08cc68cb6f31720ea7e2cfaf2c5"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
