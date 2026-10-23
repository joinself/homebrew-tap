class ZktfSimAT0230rc84 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.84"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.84.tar.gz"
    sha256 "ed5cbee907da5ca390459ff73d3864f25b37f19b024b5760c2d58607a09f0ec8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.84.tar.gz"
    sha256 "acbcc6f544b69ea97fb630d8ca2cea0c760fccd01204da715b4e8efef69ab93a"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.84.tar.gz"
    sha256 "83ebc4c90b787b293af3913749840fb13dcf1589d334eb389ec36541558cf50a"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
