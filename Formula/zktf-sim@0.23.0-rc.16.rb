class ZktfSimAT0230rc16 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.16"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.16.tar.gz"
    sha256 "5a4e0829783f6f24593db66162d43d0cfd4c315e314dc2e075806ae6549e747b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.16.tar.gz"
    sha256 "ce6ea880b82a4932e3bcfff524c314eb9dc8f20e6c9a4d7961a0f02ca5dc9911"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.16.tar.gz"
    sha256 "a6d4a86900ff6ade53798321c80175d3e04c3b96b393479e556796caeb41cd94"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
