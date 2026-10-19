class ZktfSimAT00072269b8 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-72269b8"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-72269b8.tar.gz"
    sha256 "ba82bc5e38c6ad8332a29b6e74648e20aea14de94598072630da20c5b842bea0"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-72269b8.tar.gz"
    sha256 "4bd20d82a29392d7a9780f512ecde3f49f5137a37f5ba3a08796c07581c5f2b3"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-72269b8.tar.gz"
    sha256 "e89ccda26097c70585facef8b0f8500d9ceab603629846588786eef58b429646"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
