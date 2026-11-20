class ZktfSimAT000795b876 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-795b876"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-795b876.tar.gz"
    sha256 "1637dd208c0f962524705155b8650da03cc5861e72a550fdf1d17d4f8d139515"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-795b876.tar.gz"
    sha256 "bdce32248910260e3d9bf908e8351f7d7e0584834b7d41d0cc25ee64980d68d3"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-795b876.tar.gz"
    sha256 "d3bf509fcc69ed21bcec5596a9d08017d54226feea2e0513a4c28e66c9e587ce"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
