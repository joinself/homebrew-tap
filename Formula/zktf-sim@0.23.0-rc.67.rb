class ZktfSimAT0230rc67 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.67"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.67.tar.gz"
    sha256 "62232d8dd96f385e98fef11e6669ca9ad1fddb55c3f10ba6fd42275c60e97bd4"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.67.tar.gz"
    sha256 "46134d18552a08b7f0acc06e1d48686c69ec41de1fe4849e5c60effc38627f27"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.67.tar.gz"
    sha256 "056eee14c812308620194b7f62d26aa32542a897d1bdfaab894623d1d2cc5529"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
