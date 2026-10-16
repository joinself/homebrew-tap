class ZktfSimAT0230rc81 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.81"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.81.tar.gz"
    sha256 "d84cc1228d924a43fc76bc30a4e56e32262bb449db546e34f0e45ef4a0efbab8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.81.tar.gz"
    sha256 "4b86036d8be6f77b5172c0f104610e14cf32e543351f9f1e075b9ec55342a67e"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.81.tar.gz"
    sha256 "4a8df1f86d0110b682077d2ad164ba4f5deba481c9aec022a0646526b06d17ea"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
