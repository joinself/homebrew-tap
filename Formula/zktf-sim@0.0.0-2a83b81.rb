class ZktfSimAT0002a83b81 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-2a83b81"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-2a83b81.tar.gz"
    sha256 "4ad39052a2ac25e4fec3e0ab8972785d30834025c4ceb62566ad62560a356a2c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-2a83b81.tar.gz"
    sha256 "27928169444feef6f5fdfab2811ab08e8d66aef3a8a006b4deec0ff6f1a60702"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-2a83b81.tar.gz"
    sha256 "61d7ed6f99fec5db4a12d9baa7abc94b6948b4f3149d4c11d25c49b2288968a9"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
