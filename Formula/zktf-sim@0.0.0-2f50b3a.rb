class ZktfSimAT0002f50b3a < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-2f50b3a"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-2f50b3a.tar.gz"
    sha256 "1364cc8ce9c02998a3234e82b34b1c826aa7b2e8204c6650034388c9b6fa36d2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-2f50b3a.tar.gz"
    sha256 "da56fafdfeb9cd363bbd1441a3ad114d89b63c5b5c2fb95161cc3766a60e0fbe"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-2f50b3a.tar.gz"
    sha256 "f4d3272155a1d53c0b30065792c32b2d3acf6c680f0a35ba5326cce1a41a8f4a"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
