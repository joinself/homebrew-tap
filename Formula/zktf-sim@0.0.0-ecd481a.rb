class ZktfSimAT000ecd481a < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-ecd481a"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-ecd481a.tar.gz"
    sha256 "14667cfe649ff60085a21b0be6049f0d551bb76a5bd7deebc2706204717369ed"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-ecd481a.tar.gz"
    sha256 "af2ce2a766c51f98febbc9659c5afface58a0d49aa64371c210a6556e917d1bc"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-ecd481a.tar.gz"
    sha256 "4f62271a23e35f776b01046d25bcce6c917f35f46a862643e00d72848f32b724"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
