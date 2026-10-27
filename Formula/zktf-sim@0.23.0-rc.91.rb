class ZktfSimAT0230rc91 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.91"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.91.tar.gz"
    sha256 "012d6dc951cb5ce3d53f48e884f8285362836efbb7bcbe01fdf45cbe0da82651"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.91.tar.gz"
    sha256 "83d2cba39b5f6f8434277bb67c67153ecb783497667ee5749f2a60bf0fac7071"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.91.tar.gz"
    sha256 "2ac99501d84d413f53186ea526d1665b2e57deeb37601a086961a5b7b97e7f69"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
