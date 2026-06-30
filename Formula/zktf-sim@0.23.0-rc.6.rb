class ZktfSimAT0230rc6 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.6"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.6.tar.gz"
    sha256 "a6ac51e8a89c5190727b26ee3dbba9ec544c1253a1bd37ee914332f6f63f5cd1"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.6.tar.gz"
    sha256 "f73076037206ab6a5bc54361ce5c015172089fdde26eba378592eb865b2a333d"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.6.tar.gz"
    sha256 "f1c86665fcf9a5282b78efb503b7a4e362187811b09c9e7bf93b10e1c87e5df6"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
