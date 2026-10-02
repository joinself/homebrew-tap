class ZktfSimAT000807f4ce < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-807f4ce"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-807f4ce.tar.gz"
    sha256 "ff10dcb1d64aae6b0c6d56b556afc6d0f56c013896f5e2db29dd1f2b37ac54cb"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-807f4ce.tar.gz"
    sha256 "09358a68b5196f1b3f32a217f5c45245f6e5f94cb00384c7ba2800914c806a4f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-807f4ce.tar.gz"
    sha256 "aff477c316403a68826d4c862579dafdb54af9cac8ca656758b4e61aac8b6fdc"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
