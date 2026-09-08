class ZktfSimAT0230rc49 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.49"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.49.tar.gz"
    sha256 "04d7c8d7a592dca1742ea07aa83ff3603cdafbfc1cb88c4402f1ab55cba4c052"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.49.tar.gz"
    sha256 "89037aa8202d7876597907a2c8895ef0993c4c0cd32e8574b712185cf6626bfa"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.49.tar.gz"
    sha256 "faebdb6af0dfe5a5ce83c706002cb920bbae7671c5f127b408f0fd0e4e84b743"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
