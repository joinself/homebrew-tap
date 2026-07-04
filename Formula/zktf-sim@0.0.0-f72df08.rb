class ZktfSimAT000f72df08 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-f72df08"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-f72df08.tar.gz"
    sha256 "86ace60f0458f69589596914aa5837434e298fb1c875a9f3f910feab560bf335"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-f72df08.tar.gz"
    sha256 "587b2d88d41889bc1281ade66ee5ad10116b0b1ae37f1f09b7b6269a32989382"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-f72df08.tar.gz"
    sha256 "822664be0db3adae779a054528aecbb111ba95c1b68726a88d18c33847b34b87"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
