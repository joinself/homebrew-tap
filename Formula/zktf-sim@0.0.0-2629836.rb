class ZktfSimAT0002629836 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-2629836"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-2629836.tar.gz"
    sha256 "6b1119e917ccb6e54f4e7b4e6a59d2502aa2ff81ff6659e0a855e63ac0d43a01"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-2629836.tar.gz"
    sha256 "462c42f9012820c43eb986b842f63ae3ed283fc0373573e34e69966b91416709"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-2629836.tar.gz"
    sha256 "cd05b0cf78d68844fc7b0464acd036fd2bb8957a7e0a4989cdccc1177e17aa88"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
