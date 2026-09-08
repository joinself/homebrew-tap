class ZktfSimAT000ecf3904 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-ecf3904"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-ecf3904.tar.gz"
    sha256 "b67fae563c72b9631eaa8208a2a6ca80279e15e0380c1a6bda28a4db5983bbaf"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-ecf3904.tar.gz"
    sha256 "6b01a2d591674dac6334d5556b5e79c6c1d48ba69b7d7451d67f772957db4b1e"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-ecf3904.tar.gz"
    sha256 "fe5f9e3aa2634f9842477a8045a108cc12930ddc3508fb3a471da4cefcad4f04"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
