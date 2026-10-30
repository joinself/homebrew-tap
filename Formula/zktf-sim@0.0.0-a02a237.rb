class ZktfSimAT000a02a237 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-a02a237"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-a02a237.tar.gz"
    sha256 "d765d64bf26ba9ee11ce3e1f910b282f813b5eb6de85c864fe5e738a08618db7"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-a02a237.tar.gz"
    sha256 "f25b7e4803869246b6baa80d57ad299108d9872cbb9d896e7c4994dae2ef5ec3"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-a02a237.tar.gz"
    sha256 "e529f5f43d02523ba3fe905b4a03ca7b23030c3a6e936f47769d60346c27d600"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
