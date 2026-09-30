class ZktfSimAT0230rc66 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.66"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.66.tar.gz"
    sha256 "e43b3f9bbbbfd6a21665b43dc173017f3f914ae2d51b3a86308abb9159cc35c7"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.66.tar.gz"
    sha256 "1e7e2cf2aa20acfbf8d3b6ff4b64300013258460d2c9115dc169335973aae874"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.66.tar.gz"
    sha256 "cce6877d27b5d974e7d80d2c5a6a5eb8ee0e31dd47120baf134a221692a2ca86"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
