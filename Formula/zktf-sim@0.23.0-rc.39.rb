class ZktfSimAT0230rc39 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.39"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.39.tar.gz"
    sha256 "d6e37694b3ae1162b76db2b0fd512dcd2024cbed477b875d00d48cab40580e2e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.39.tar.gz"
    sha256 "10acdde301e473d0c6dbbf4e4798f1c21c47e36db8d12e213bd5c740c5f95570"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.39.tar.gz"
    sha256 "eb4a3762854e6e1dfe036f5fc54c17edec146e657a931e2e3320b3e911809b44"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
