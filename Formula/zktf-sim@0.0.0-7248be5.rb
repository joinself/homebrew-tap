class ZktfSimAT0007248be5 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-7248be5"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-7248be5.tar.gz"
    sha256 "2736b2da52fef58662bbcf3b7e75eda7c5103cb15a1d2f0a2d6c969b20846cf8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-7248be5.tar.gz"
    sha256 "675003f3fcc0a4b1fe8157a4b3f3190e17b6a06820d666500b6df3634278b6ac"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-7248be5.tar.gz"
    sha256 "a3d7f9d7e18d60fbd2e0971967f3f2e0d225adf3038ea1f77a557d9aaf8963e5"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
