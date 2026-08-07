class ZktfSimAT000d793502 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-d793502"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-d793502.tar.gz"
    sha256 "34e604111bbf021daafc77c88195a7a2a03ccf679a80b736c96a7448f2b65ef1"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-d793502.tar.gz"
    sha256 "080357a51d391b567632f397db01919d48f8124a05a869a25c99c66b45110d91"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-d793502.tar.gz"
    sha256 "d96a139048c6a6b50f947b03365d5845c9437970a40a4701d3fd9f5db49311a6"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
