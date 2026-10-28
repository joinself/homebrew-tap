class ZktfSimAT0005dfa4d5 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-5dfa4d5"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-5dfa4d5.tar.gz"
    sha256 "79929df957914a9ee6b98dde19b8c64e0e3e090314dbeb3112043842a17556ae"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-5dfa4d5.tar.gz"
    sha256 "99ca5013c8fefd3eedfadc8668d7d7a24ea30e9d3bdbeae99e950605ad193211"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-5dfa4d5.tar.gz"
    sha256 "efdedafe80cd2d0eb1920f0d695b8c9d44a70d644fd4a1438b169a8f8df0521c"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
