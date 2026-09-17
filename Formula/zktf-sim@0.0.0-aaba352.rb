class ZktfSimAT000aaba352 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-aaba352"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-aaba352.tar.gz"
    sha256 "bfcee8cc6559ab2d89f5692a5cecda02c104a80065945c99b5a57069de4bd807"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-aaba352.tar.gz"
    sha256 "1495a45e6d1cce1a2e7b17890074298d8852a8b945228372e05f323900e1e84c"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-aaba352.tar.gz"
    sha256 "7ca1b044ac3b6e4c72ec013a38478f2fb17c09d3202eccff46b9473693489fe9"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
