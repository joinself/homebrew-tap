class ZktfSimAT0230rc3 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.3.tar.gz"
    sha256 "5193132c8ed7603ac0f551fe569ab68f3d189f56e04c294d6953417e7c86f2c1"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.3.tar.gz"
    sha256 "54d75c534197b6bcd8ad6a4c0bdb25c0c6d1dbea7989778031ad308160e9bcc3"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.3.tar.gz"
    sha256 "108e71ab3e751e98e1927f59b642500be8b72b2d8227a37270817c2e488dd7e2"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
