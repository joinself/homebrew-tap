class ZktfSimAT000cfc1787 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-cfc1787"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-cfc1787.tar.gz"
    sha256 "393454cfade4a8390b13583c3b3d682752f417f669f1860d75f83a47641e3d78"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-cfc1787.tar.gz"
    sha256 "6a18c29b2c5bd8a9160af09685373f187fa4e8953ea4cde5401920d9cde3f2b1"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-cfc1787.tar.gz"
    sha256 "f5f7d9a95d6717169aa3b16532bc76b7bee9b8022bb7aa54916979f059b3a45d"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
