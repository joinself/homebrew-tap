class ZktfSimAT00085f8102 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-85f8102"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-85f8102.tar.gz"
    sha256 "46c6a0c8577e7942f312743aa6f330fa9f3d397f8654b790a747a82d58910e50"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-85f8102.tar.gz"
    sha256 "b8699f319c464f1d740593536b5e06638e22e2c3df3644a656f9a010f5bbd246"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-85f8102.tar.gz"
    sha256 "49d30f188824048c5655c1daa7f87d9bd7ff9d1b46a3f709b9d4a1459af1a57e"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
