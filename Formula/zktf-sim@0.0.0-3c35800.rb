class ZktfSimAT0003c35800 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-3c35800"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-3c35800.tar.gz"
    sha256 "e60aad4bbbbfa0f648a063a2efbf6890fd8b33c3ab72827239e9a10bb33651a2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-3c35800.tar.gz"
    sha256 "719934f861aac175d9ec4d28145b1612fa7db089fb8b9c184fa9b2cc384ee7a3"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-3c35800.tar.gz"
    sha256 "27d3c78d9081366b019a39fdb0685d1a66cd3236787aa1dc7a51030d2b6a4311"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
