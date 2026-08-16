class ZktfSimAT000fa1a9c9 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-fa1a9c9"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-fa1a9c9.tar.gz"
    sha256 "dbbc02da9cf13349bb2e2c11d6d46c4e8e890797874692a55da368f540525c24"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-fa1a9c9.tar.gz"
    sha256 "cffa65e4ca21cf8422a51d727e201cbdb4418028b13c1b781e5f20def98c6b55"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-fa1a9c9.tar.gz"
    sha256 "65cd1c8339bf7639722417594355b5c0e2b9ce073d95205c1e937a33fa253f3d"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
