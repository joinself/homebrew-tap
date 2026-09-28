class ZktfSimAT0230rc61 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.61"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.61.tar.gz"
    sha256 "9ea6b7a6312f8cf6a5e88f3e021f595490938349b10e0cfae2bf3d8417222609"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.61.tar.gz"
    sha256 "938514312485f269c46ec0fe783526f801ff0bc8ace1d0686a72c74041a1ae93"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.61.tar.gz"
    sha256 "ecce1e18ee0ea2cd2eb4b8e18e8f530b1bf3d19997ad53bf8524ab4dc0ffb661"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
