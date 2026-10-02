class ZktfSimAT0230rc70 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.70"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.70.tar.gz"
    sha256 "e4f02d029352024f5fac86a7087c08e01c9294a2c9be257afd5f545bfb87846a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.70.tar.gz"
    sha256 "828324e9c96635a779fd1b0790e818e13eb818cd993c6659dc2d445cd2eaab43"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.70.tar.gz"
    sha256 "b4b796fdc0903b0c1c3c3c82fbb39b78ac8e88fc2a9f185ce04263c9e73787a1"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
