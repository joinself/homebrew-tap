class ZktfSimAT000bb7ea73 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-bb7ea73"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-bb7ea73.tar.gz"
    sha256 "d4d8d08d87e6e9528e3d9d03fc4da6f6b897b615f1d6e3ece360c4ee1ce1639e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-bb7ea73.tar.gz"
    sha256 "fc034df40100d600da44e0dcb63a97de50832ab3613957b3bcf931a499c8a7cb"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-bb7ea73.tar.gz"
    sha256 "f2565eda61c34b6c35db0c4728f633b63aed4367d2da0e50b582b06b0d4e4ecf"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
