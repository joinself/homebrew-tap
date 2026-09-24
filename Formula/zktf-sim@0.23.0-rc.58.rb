class ZktfSimAT0230rc58 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.58"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.58.tar.gz"
    sha256 "67611df4bda5d047aeb4655f39122007f9fce25e0e8c6312c21847ed0dcf6076"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.58.tar.gz"
    sha256 "f520f5d6692a41f764857611370cd8f944aeec3ec5c876c48c77c1c835df36b3"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.58.tar.gz"
    sha256 "e3e9ffd7929b7cc26a802d0ac3ba41a330f077ef18b215253b529c3347fe3e40"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
