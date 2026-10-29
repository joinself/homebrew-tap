class ZktfSimAT000868413a < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-868413a"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-868413a.tar.gz"
    sha256 "86b1bcc5a374ee07cce58551e6c706c81fe2657458e8f3d4689f7ea37339272a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-868413a.tar.gz"
    sha256 "1e881330e31d6902e6164b0b4a416c5a56ec99a2ed2d3b31d067283721624134"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-868413a.tar.gz"
    sha256 "cef49b4bb24fcf69e39810cd2cba87338ef0824c43a1ecaced18989c0119af94"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
