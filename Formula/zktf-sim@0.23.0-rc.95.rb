class ZktfSimAT0230rc95 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.95"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.95.tar.gz"
    sha256 "fa0569e9ad68fb756ff17a2fc234dda7c3cf98ce064d8c8e8e512d8352dea0ef"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.95.tar.gz"
    sha256 "46d82ad3f8e5e3e4dba277dda8890e34017f43afc6fa05ca8adc719cec9e0cf6"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.95.tar.gz"
    sha256 "22e25729597206138e6eb53bf2ef39b8aa4a737ba5d98d57580e927b200e0c5d"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
