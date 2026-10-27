class ZktfSimAT0002113dba < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-2113dba"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-2113dba.tar.gz"
    sha256 "6bc55e0169d3b8f0cdcbba4c9e6122668ea5f2909e8e5052747dec4a9331b0b4"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-2113dba.tar.gz"
    sha256 "51f321ee300ef28ca52a5805439c6cdd54706f90b17d9699fb65f03af4512bbf"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-2113dba.tar.gz"
    sha256 "e4950c2bc0db59d6668c36c9f390ee3234a053f634dc0ead2d5766438b4c3116"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
