class ZktfSimAT000dbec979 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-dbec979"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-dbec979.tar.gz"
    sha256 "c7450ab79a22f33c62e3d4227b9e811fdd94373c73556c132446379508b56fe3"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-dbec979.tar.gz"
    sha256 "709710d78575c7f2c050224a1c5eb645dd9eb8c6830bf1b97e040bb960f6b511"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-dbec979.tar.gz"
    sha256 "e7bae6825dfaab0a8ab92587039cc6d3cc182cbbd43b413df19bb907ecb85484"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
