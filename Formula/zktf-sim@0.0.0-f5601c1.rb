class ZktfSimAT000f5601c1 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-f5601c1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-f5601c1.tar.gz"
    sha256 "07bbf185d7783129ec02ed1fbf8a9a3875d874e4a2804e8d76e570e51adde38f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-f5601c1.tar.gz"
    sha256 "22b007389fe141e0a14a8be2b8db75c6d7c751fa12747956faba0f0aa3f658f2"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-f5601c1.tar.gz"
    sha256 "44aadafb4e0ae0f9705e2d1fe34c3a4c6d9ff0f3f7a4ac416601f8e1342b722e"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
