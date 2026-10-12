class ZktfSimAT0230rc79 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.79"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.79.tar.gz"
    sha256 "884e1caab5290ede5b6a7999dd2d1ab7b1f6e321174c402428bed34d9362aea5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.79.tar.gz"
    sha256 "42715a70454011f51fe170cd533f0d57099570b4c5e54eb21360a9e3f38539ad"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.79.tar.gz"
    sha256 "cbf5bc015ec56e6d884a99cc02083c0bebe9dd3e1b13a64edd3da7140b59aaf9"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
