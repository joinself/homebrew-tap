class ZktfSimAT0006f6da49 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-6f6da49"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-6f6da49.tar.gz"
    sha256 "b229e8f8ac4a7eb93db041801df4d3e32213b2269a499ef3df899afe61f5c056"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-6f6da49.tar.gz"
    sha256 "8d00302e9cb2a75fa5be0847020a62228c00087e4dfa79483c1154a4ed69bcea"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-6f6da49.tar.gz"
    sha256 "6b95dcbd95892cf5986deb37fb3f8f7cf9499d2d87ce4f8f4141fac0ea86339d"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
