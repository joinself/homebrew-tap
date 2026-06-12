class ZktfSimAT00035fd55c < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-35fd55c"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-35fd55c.tar.gz"
    sha256 "6c169928fdc289ee43dda956d29a0d341e0a69c03769d66c0f4f87258c23680f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-35fd55c.tar.gz"
    sha256 "57a98c5a1ee99d9e3162522b586cb89bd66b0d2e48c068143c1f7b7511262e35"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-35fd55c.tar.gz"
    sha256 "c2d3ed8eeb48378fdd5b8df4d5a69c6028a77dddeb38dd370d7489fa4950bc06"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
