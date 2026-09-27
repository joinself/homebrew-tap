class ZktfSimAT0001b6e181 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-1b6e181"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-1b6e181.tar.gz"
    sha256 "bad73fb0c685582d4575635c6eccc32acfe619698844456c8166977a5043cb4e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-1b6e181.tar.gz"
    sha256 "1ed616c516eb94c2e3c1d0249ae554a1a416576c87e8b677e10300e7b9accb55"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-1b6e181.tar.gz"
    sha256 "e53fc8b0939010e0b2c9d0f692086ada589b4b0e8fe95f87846dac16d29be13a"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
