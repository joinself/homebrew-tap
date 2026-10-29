class ZktfSimAT0230rc94 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.94"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.94.tar.gz"
    sha256 "5609929e22eafcb83cdfa8138156c678b7af5d7df9be3d955e56cf4fb4e9ac4e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.94.tar.gz"
    sha256 "d57e93aa3e9b89d30a3b2701c22fd05db34ac50bfe20742e6619a8b17f2a0d70"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.94.tar.gz"
    sha256 "66f39d5d244e20fdbe944340e104e25c38eeaa905deab7cc33a27fd7726f465e"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
