class ZktfSimAT0230rc20 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.20"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.20.tar.gz"
    sha256 "2dba84f1462fe55fae265aec4bda4a8a1e048282b061d1aa31a9e0b45608d486"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.20.tar.gz"
    sha256 "a120f801bc5c2d82ba7c43dff5c865c33db521315519d8198f65c78777f7c996"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.20.tar.gz"
    sha256 "95c3838330fa9a4e722c98c5aa1edd655f4a5ef9ccaee9a8d30067a837fc4d21"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
