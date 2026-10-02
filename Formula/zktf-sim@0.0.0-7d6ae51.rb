class ZktfSimAT0007d6ae51 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-7d6ae51"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-7d6ae51.tar.gz"
    sha256 "1a1f88336f29ba1e48c6577f00170d7245cf6169fad33076e32e5f6f76ecdfa5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-7d6ae51.tar.gz"
    sha256 "256eb57562b5bf46947cfcc0f404619a4b182dafa0c72d1afaaa05d960096174"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-7d6ae51.tar.gz"
    sha256 "155d004cc51bf97c5e2237c450a49821ec40766c24ecd8e38d6360f54127fc76"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
