class ZktfSimAT000143e811 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-143e811"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-143e811.tar.gz"
    sha256 "3d3ca6e28cba8d9dc2b5e5032f310719189890e5bcade78673b99f354450a0ff"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-143e811.tar.gz"
    sha256 "d18603d5b2970e00aecb464707cc7a77adf4fcdad4b6d2b7fc6911ba07befbce"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-143e811.tar.gz"
    sha256 "b828e681a94bc2b81132aed7fee4b879457a376b9673ba290e6fdbd9171e2f87"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
