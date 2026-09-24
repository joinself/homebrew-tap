class ZktfSimAT000008a567 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-008a567"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-008a567.tar.gz"
    sha256 "1d51f834d0a6b6b4468f8a58919b01c03eeb63af02d72c94d5a05509370606e8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-008a567.tar.gz"
    sha256 "8c6291c3e63bf6d6cad46ebb16822a4a58930fb1c9309b852c436216d3d45e9a"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-008a567.tar.gz"
    sha256 "52c1b331c45d2f115eb09312bbf2561d81f199f7ec61ed232ffc4b77611bdff3"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
