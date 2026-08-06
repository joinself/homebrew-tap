class ZktfSimAT00008240b3 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-08240b3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-08240b3.tar.gz"
    sha256 "1537bfe854df458b4995b57aa33f89d6f89ceeada79c1bc208ef988f5f314cdd"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-08240b3.tar.gz"
    sha256 "d97f53b975b2dfa1dedcf35308cb1ce065d13ea462b0db8261ceb2d33d86ef7a"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-08240b3.tar.gz"
    sha256 "7dc5f4e4249170997eefba522add4cd83439bcba613215b3aa2a5e099adad2f4"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
