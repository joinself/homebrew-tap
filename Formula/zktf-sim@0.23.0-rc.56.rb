class ZktfSimAT0230rc56 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.56"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.56.tar.gz"
    sha256 "42500b06e0fb02e1949b60c322ebe41449307f981d70ca029e9c173440fdb8c8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.56.tar.gz"
    sha256 "052ed263b6324c686c29af4b1126896bd2b2faab86421052c1bfbc59a3f92a1f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.56.tar.gz"
    sha256 "d8100b01174566dc3b04cf5ca9ed6d7576ed6747355b87387818e4ceaccdd282"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
