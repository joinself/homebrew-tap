class ZktfSimAT0230rc107 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.107"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.107.tar.gz"
    sha256 "7eb38b501c759e096db15a486c4ce0067581336fa85fc9a759801e25df8f5981"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.107.tar.gz"
    sha256 "e35c95129a87ebe683b5a0b5f17bd66a84b7e1da9f708540358ccfa71c488044"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.107.tar.gz"
    sha256 "7796f3dfdf155950c9dc7e63ff1a6ecd079c421132b0536699207ab936f48f04"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
