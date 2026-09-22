class ZktfSimAT000a8ad28b < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-a8ad28b"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-a8ad28b.tar.gz"
    sha256 "a23ed1d589427bb659d961d4859c42fb6107ee2e7251b825645281de3882fd60"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-a8ad28b.tar.gz"
    sha256 "37b03e743b0e2f9186daf407f8a825d4b6bd27fa770c6d757bf0410d13ec9a16"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-a8ad28b.tar.gz"
    sha256 "6b0f77a9e7705ed0657275549dc491b3e82018645cf1961ecd07aeb5f21f194f"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
