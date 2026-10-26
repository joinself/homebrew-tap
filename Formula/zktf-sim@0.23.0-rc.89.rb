class ZktfSimAT0230rc89 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.89"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.89.tar.gz"
    sha256 "278ff99b743832c61f6ea1fc9808314fd0dbe232ba57fcd1aaa0ac8d8ff34397"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.89.tar.gz"
    sha256 "873bc3604d3ae652a0ae8643bf41af8bb5fbf11486d0f2b4e7ddddca11466fcd"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.89.tar.gz"
    sha256 "5f1f68166d874f73e6c1d735018f933668ecc5008159dfd1a8c861deb7dc1011"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
