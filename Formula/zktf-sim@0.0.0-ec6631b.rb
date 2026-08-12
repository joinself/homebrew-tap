class ZktfSimAT000ec6631b < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-ec6631b"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-ec6631b.tar.gz"
    sha256 "54ce0ac65d095c3d6de2c434281d4184bd9ece689b535d9f972526888b664192"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-ec6631b.tar.gz"
    sha256 "f79037e8fd2e2ba4997ea3332a2bdc1b96d483df7fb71439d65df6b0fd8b9846"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-ec6631b.tar.gz"
    sha256 "403a4aedef73fb1de3a115f13936a4ee53f2978c84329134093a18d2652ad35c"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
