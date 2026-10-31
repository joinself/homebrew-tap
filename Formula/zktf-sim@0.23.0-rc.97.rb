class ZktfSimAT0230rc97 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.97"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.97.tar.gz"
    sha256 "6ad27540dbc3a90cdd4b2660f23a716d3dc6d37511f3a6463324cba3508c9c4b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.97.tar.gz"
    sha256 "61862b9352fa51abedb688f34893ec39a8f0c09657e6b014ed083fa9a3b6e757"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.97.tar.gz"
    sha256 "64cd0d8711edd08e81bb69d2fdcc5f9e644601bff80b397accaaa528084b99fe"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
