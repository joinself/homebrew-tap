class ZktfSimAT0005fd1af0 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-5fd1af0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-5fd1af0.tar.gz"
    sha256 "8b0f2d42b363a1e2dc3e3ea9c64936faed07d44caba9463f47f55adea6ae461a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-5fd1af0.tar.gz"
    sha256 "6247de8bbb39e77c8b7464c3dd07162ceca32f70a2768ca9e61f34888753615a"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-5fd1af0.tar.gz"
    sha256 "c0fdfe30f90802d82d21d08cdf4096d3f4964eb6a050e99cdd2bbca6bd6338d3"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
