class ZktfSimAT0230rc69 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.69"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.69.tar.gz"
    sha256 "5902d84665c3388273ad203e1358e824c2ec0cbe41138b9d1aebf8cb24ff9ee2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.69.tar.gz"
    sha256 "3c8e7b18550cacef98d5d203ec4d228c00fa6ddcbf33a4c3ce3b1a3df926b6dc"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.69.tar.gz"
    sha256 "73e28b04585494f251af7085acc7536f812c196bbfef936e69e2a0111c6e05f6"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
