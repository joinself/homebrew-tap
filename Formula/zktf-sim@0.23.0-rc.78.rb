class ZktfSimAT0230rc78 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.78"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.78.tar.gz"
    sha256 "f75a86dcef0936921a2f969e2d09bd5bed85634da07535bcf861da3c25221fdc"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.78.tar.gz"
    sha256 "267cd4aa7d3d473f670177e592c51566c5d1393478dca8b5516325881e8d4dd3"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.78.tar.gz"
    sha256 "423560c26c949e2b82c07b9cd14b33d5a45234259e1730181bfbfe63e3534723"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
