class ZktfSimAT0006231877 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-6231877"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-6231877.tar.gz"
    sha256 "a678d1cd46f7548b1245c0bad185da480e277cea7c327b291c7cb6be9500ac68"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-6231877.tar.gz"
    sha256 "7158734848b68ff4280ec57410c4500987c2164069069cba128b57f2ac280001"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-6231877.tar.gz"
    sha256 "d4c4078eb8f5e1d45b82efcc600288ead1a58ac7825b9b4de2fd5ca76edd85e0"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
