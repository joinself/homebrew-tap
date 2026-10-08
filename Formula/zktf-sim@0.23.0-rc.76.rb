class ZktfSimAT0230rc76 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.76"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.76.tar.gz"
    sha256 "164e286a8e21ee9cd2e4b54f6954a52d2cd48646facdc0868fb3332be11b3180"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.76.tar.gz"
    sha256 "3172750b7ec8ebcbb86e9c7ae55e60bc62910e71b44fc39779b0051d5371b5c7"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.76.tar.gz"
    sha256 "45df05016a7cd8fb0444b7b43a64dac01d35221698f6ae316453ef5c673c8509"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
