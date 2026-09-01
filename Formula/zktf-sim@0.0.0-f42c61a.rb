class ZktfSimAT000f42c61a < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-f42c61a"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-f42c61a.tar.gz"
    sha256 "5f972e9d384c21ee1ec9a7587c3a42132e48d39ed41bb52f98fca8e49b77bb77"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-f42c61a.tar.gz"
    sha256 "a98b5802e1fc397ef52bdabf053420700c2a6b3bf17f9ca8ec2ca8c0cd38f7d3"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-f42c61a.tar.gz"
    sha256 "fe4e06dad865524f1b61dac0222cf03dfc1913e78c2a1ba5e3cc3785c3739e6d"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
