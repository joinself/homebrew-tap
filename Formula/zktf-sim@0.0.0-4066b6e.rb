class ZktfSimAT0004066b6e < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-4066b6e"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-4066b6e.tar.gz"
    sha256 "91c1739a8f550d60d008f9a358896679a923777ea558416852b11d5056ba9ed6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-4066b6e.tar.gz"
    sha256 "1d09b905a996943f64798ffa5497699f68a3fc9bd37069a6fb49e67ac55ec328"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-4066b6e.tar.gz"
    sha256 "8789c4eb03b2c17fab83472b99470470489036958c6f3269241f586b735b34cf"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
