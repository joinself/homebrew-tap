class ZktfSimAT0230rc21 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.21"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.21.tar.gz"
    sha256 "7392496ddd987884dc1b21020a94c108d896851153dfcf91ac957c1736aa4869"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.21.tar.gz"
    sha256 "a5e16a7d671895a5e6f1988796900512be98598ff7bd7af8db6a0416494309d5"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.21.tar.gz"
    sha256 "c4c8836dcd2e5f48e6fddbc3f2bb7a536ae4a5a6d70a2378d43fc52a0c487379"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
