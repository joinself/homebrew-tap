class ZktfSimAT0004c5e04a < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-4c5e04a"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-4c5e04a.tar.gz"
    sha256 "ee323db133040908b28caef220f2a4877e2bbbb970bf0606cb1e19b0b9e37231"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-4c5e04a.tar.gz"
    sha256 "f5daeaef1892a44b3afce2e8c1e582297531c9bc857e706350a55267b2e396c0"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-4c5e04a.tar.gz"
    sha256 "65f86c0772d13c4176b24e2f7e6345ae35e89bfb3332592088f9fd91ef29ed47"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
