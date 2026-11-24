class ZktfSimAT0230rc108 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.108"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.108.tar.gz"
    sha256 "04065f5de7de108eba4f46d2fc834058e43af439b6a73716aac33f68cde482d3"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.108.tar.gz"
    sha256 "e9abd80b9d5aa0036a27565f9d48e20f538d272422a3ff7e7ab84ad59258bb51"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.108.tar.gz"
    sha256 "ade8e08483419e6a24472dfd83d9f7eac826c665400049f74b4e9b3b3abe094d"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
