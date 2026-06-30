class ZktfSimAT00050ef4d4 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-50ef4d4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-50ef4d4.tar.gz"
    sha256 "4bd36ed27350a7171410e0e205591f90d20216951053d701ae88c6cd87d71a6e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-50ef4d4.tar.gz"
    sha256 "2fbd76d54b59ce987474b39d3119ad33699472f70087f12967264d5e3207389b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-50ef4d4.tar.gz"
    sha256 "a0bc87384aee0bad23dcc7adf5eed756f7002e15026a5de4024e948018edeab7"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
