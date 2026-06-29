class ZktfSimAT0230rc5 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.5"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.5.tar.gz"
    sha256 "e22210b9c7605bdfea183651d2fd33a7a0c511d9ad3f1ba680fca641c520d2ce"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.5.tar.gz"
    sha256 "82b4d12885706fbf5c6859215fbc2974a7b7a4e0cddcd9437195e62d5b2ce698"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.5.tar.gz"
    sha256 "5e68b47992e412a33b5a8ef288ce43218ca47d9808dd327cf662105ce8920f26"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
