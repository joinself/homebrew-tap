class ZktfSimAT0002151971 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-2151971"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-2151971.tar.gz"
    sha256 "6298ef5661cfa30a29f09c624aa8600d9563c2491a0ec6d88162e20dc3fb1641"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-2151971.tar.gz"
    sha256 "2cf00685e0653c0ec65e53055be903332efa400662d2b43feb7fe5c84a839a34"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-2151971.tar.gz"
    sha256 "826dbe36f056f63cd103e22a5e9b99e3b5471e640a1e512aea15ffd10506f566"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
