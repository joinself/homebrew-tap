class ZktfSimAT0230rc13 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.13"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.13.tar.gz"
    sha256 "d53f8a91792406d8913a34a630480ed60d102d93fb64aec36fd532b5853bdc31"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.13.tar.gz"
    sha256 "60e4671b93c8943fdcd1735f5b1acd6754e589244e52c3b6c140073eac19b4ef"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.13.tar.gz"
    sha256 "29e4e02290dcac38e09067f5efa2aa84ace4c02f5d7d3d2361ab0f5d30163168"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
