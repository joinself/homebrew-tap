class ZktfSimAT00075245f4 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-75245f4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-75245f4.tar.gz"
    sha256 "aafb965345c8ac8436724ac899eeaaa9ce8fe51ce662716e4749c0f51707132a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-75245f4.tar.gz"
    sha256 "5f52f31571712d29c58bb75f75623bc5635a89cae90224eeccf5bd71c4d18737"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-75245f4.tar.gz"
    sha256 "bcf1abc0560b023eb44fb1a16e0890e1c7c35655e8ab1ff637f2798125b9526c"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
