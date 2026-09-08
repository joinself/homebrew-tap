class ZktfSimAT0230rc48 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.48"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.48.tar.gz"
    sha256 "557749538f2f1b069032728fe8d90a1509f0be22c139eb5e566dab5243d1887e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.48.tar.gz"
    sha256 "a2b2e1984e6d572f0cd87abfc45fc406978068729a18e0b309a5bf69e5d98fb3"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.48.tar.gz"
    sha256 "c14f19c08f120a60576f8b47a8a48f440874ec4a0e13d07b68f54b5084b6150c"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
