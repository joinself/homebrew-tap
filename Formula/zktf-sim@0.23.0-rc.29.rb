class ZktfSimAT0230rc29 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.29"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.29.tar.gz"
    sha256 "f0f422a1b2c2957553878e9cd2e193bc082f1cffe87bb0561bcbe1e96de508fa"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.29.tar.gz"
    sha256 "006bac2cb2be3ec3728a940acb71aa8c78d164427690cebee22c2ff518037737"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.29.tar.gz"
    sha256 "8237b4c06b5895edaa024c1ace2f6bf3bd0d9bb52d6063ba1360c9f872067f8f"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
