class ZktfSimAT0230rc52 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.52"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.52.tar.gz"
    sha256 "bec890db8c66f14a50296dcfd8478e44ff4827570a6a04a90e167c5b5cf3758e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.52.tar.gz"
    sha256 "ac33928ecff5097b1db724bbdc2dbe1a20c7790095aa80089a7026cac8416890"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.52.tar.gz"
    sha256 "2adf43eaba26a23d1e528aa4f7d18648192667e9f51c30e481ed24db1da64e0b"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
