class ZktfSimAT00099cf126 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-99cf126"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-99cf126.tar.gz"
    sha256 "79a135aae7f667bdb1dba50495962979d5b8f7384ca4452296098e1842f25f20"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-99cf126.tar.gz"
    sha256 "353461ff7108093016db2f48f1831a9db48a8dc27775a8e30892b39a76c5fc61"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-99cf126.tar.gz"
    sha256 "0bf5de28c89ce81a54df55db98a77697ff35b2eb030123c6d1b2f7e96bf1d7af"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
