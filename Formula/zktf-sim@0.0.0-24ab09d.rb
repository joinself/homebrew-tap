class ZktfSimAT00024ab09d < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-24ab09d"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-0.0.0-24ab09d-darwin-arm64.tar.gz"
    sha256 "86e4ae1c28e7f9108a8d27fb82d4b5402193b8dd903bfaf14f1dd296a8d58d2f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-0.0.0-24ab09d-linux-amd64.tar.gz"
    sha256 "a20a2dace96d9a3ad6ce8600a969107c097ff53abccc491f0e45bdd8d2c95c01"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-0.0.0-24ab09d-linux-arm64.tar.gz"
    sha256 "d2d992bf284e5656850dca98ec8f599bb1ca4ac50248e130e717667421472536"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
