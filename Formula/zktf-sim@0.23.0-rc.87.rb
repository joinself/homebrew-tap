class ZktfSimAT0230rc87 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.87"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.87.tar.gz"
    sha256 "d4da3a91c72068d2a10fe66ca0d729aff748baf2241af5e5b7db7ffcafeac966"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.87.tar.gz"
    sha256 "a991126f958a63a51eb22b43f39c450a0d95ae60f6f6075dd87525e0bdc8caae"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.87.tar.gz"
    sha256 "e02357dd9358e5e2978544af1bd8a04efe8af625c2294297666d296f814a917a"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
