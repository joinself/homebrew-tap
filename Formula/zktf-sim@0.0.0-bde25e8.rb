class ZktfSimAT000bde25e8 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-bde25e8"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-bde25e8.tar.gz"
    sha256 "f028957f1e5578650635d490e6aed6551073133992c1e8087b76447a66c599b3"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-bde25e8.tar.gz"
    sha256 "83e57b539eb2159b64b68cdda19af15dea15944ba2c32888c3509a49c3688da0"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-bde25e8.tar.gz"
    sha256 "de3ed52e72d3018efd9dd51c440e7bac2405aeb87949fce7af1964ffe27c5b8b"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
