class ZktfSimAT000c0f1435 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-c0f1435"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-c0f1435.tar.gz"
    sha256 "a0a99824cae3b8698d885e72edc58a24829fcf151cf14465cbc5cbff295564ee"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-c0f1435.tar.gz"
    sha256 "af297a799ca09581405442e51c00e09a3dff158dc2802409419057808651582a"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-c0f1435.tar.gz"
    sha256 "990d1e3a14af3a9b2c6e4c7e40ff3aa0652ded6bb57ddbac42766a9d44a3d150"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
