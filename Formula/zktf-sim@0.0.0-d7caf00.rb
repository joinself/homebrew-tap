class ZktfSimAT000d7caf00 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-d7caf00"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-d7caf00.tar.gz"
    sha256 "9bd8260196cc6cbcfad889bcde0fd6cb29538988f95442476b62277d50b1e931"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-d7caf00.tar.gz"
    sha256 "645c14a6fddaefa8113206a94729801589b6c807982988840d6187ee7f7639cd"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-d7caf00.tar.gz"
    sha256 "e3e095974dc836d7cb10de14beb2d10ca6869ecd688f219b0c7b788de3a97545"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
