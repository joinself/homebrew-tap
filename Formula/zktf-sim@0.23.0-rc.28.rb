class ZktfSimAT0230rc28 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.28"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.28.tar.gz"
    sha256 "6c12201f110a6d387a65fe80e795f7221dc12aa3872738bcee9de0f41d961d4c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.28.tar.gz"
    sha256 "733ee301cad86af868d9876bf986fc0d25951c6fca9aae49091c6aacec6a6195"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.28.tar.gz"
    sha256 "b8c31f8f62495c8ac58f3ce6bb24813392056f0ba708c441040dec75dee75563"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
