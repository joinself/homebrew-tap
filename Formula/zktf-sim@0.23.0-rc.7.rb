class ZktfSimAT0230rc7 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.7.tar.gz"
    sha256 "6d2bdfc805046c3af253a02af3ecffa9e530623a008249b7cf97056d75e1ed7a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.7.tar.gz"
    sha256 "7dda130f5373e4813723039d4decd6979a8ad75bf62df38186e84e261f296d78"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.7.tar.gz"
    sha256 "08b23ca489628f2f2db72628674b420f822d61886e9945208e88dbad9ded67d8"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
