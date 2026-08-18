class ZktfSimAT0009506483 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-9506483"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-9506483.tar.gz"
    sha256 "dc0337c51fb6ebdf1fa2ad04dd908d531d0b5e31c2775111b2fec4bea6565f83"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-9506483.tar.gz"
    sha256 "66785b2613ab6a2f4a521013dc278821293c2631296395071a74ecbfa1516884"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-9506483.tar.gz"
    sha256 "260908f481c90faadb4361ba26005b7afe6bbe8a353313474762dc538955d694"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
