class ZktfSimAT000dbecad3 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-dbecad3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-dbecad3.tar.gz"
    sha256 "9f550c21abe57602b473e6a438097257af6c10c09e92c239f7c1143a3d05b877"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-dbecad3.tar.gz"
    sha256 "16c3bb91086ed6f97b227c7c948e305b4e4fb915f3d656455ec1fa9fe3618340"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-dbecad3.tar.gz"
    sha256 "9c525f8dfb3410237c3ce6f7fcaefcd66f5e1721a214a3f020b6d19d4571526f"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
