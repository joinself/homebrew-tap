class ZktfSimAT0230rc68 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.68"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.68.tar.gz"
    sha256 "c0e7eecc8d8135db795981a83991aa9417ec2c3e24c1fa413652c97e85477e04"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.68.tar.gz"
    sha256 "8a9ee5b09cbe7b23333bfdd2696c9951da711b014a779ebf3636ce61189db787"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.68.tar.gz"
    sha256 "05623a7fee78eee9868e2fe56de959d1ec473f4c7cf68bf01cc96d234931d137"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
