class ZktfSimAT00079ddea7 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-79ddea7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-79ddea7.tar.gz"
    sha256 "d2f357bfe77372e60731b06724bde66a89ce095fc13b4074a14f2f5c7a53e2f2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-79ddea7.tar.gz"
    sha256 "c7f8fc86bfbbb24417624fec86bcf963093564094eeded1cef1fdd33c56c129d"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-79ddea7.tar.gz"
    sha256 "95f061f16a6ff01268c2d0d7d0f9bd5fc232ecc4748677b7ec76acf2d1051994"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
