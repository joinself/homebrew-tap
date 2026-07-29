class ZktfSimAT0230rc26 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.26"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.26.tar.gz"
    sha256 "c5e4d93837dd7e99e25419daa33938ab72b583ad795603bfa3730530ab728b33"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.26.tar.gz"
    sha256 "0563b54d482d58c0b618038c09d17db26f08f0612192c97de4afd83fa8c4c4e9"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.26.tar.gz"
    sha256 "d9eba044a796115b2bffaf1cd72d1d0a80dc7997851c2010c1aa485d2e228874"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
