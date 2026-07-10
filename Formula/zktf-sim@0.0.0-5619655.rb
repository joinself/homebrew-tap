class ZktfSimAT0005619655 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-5619655"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-5619655.tar.gz"
    sha256 "a875c5981c10885a79176fd266f9fd7dd115cfb3a1d2b8c0c991cb4da7045fdd"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-5619655.tar.gz"
    sha256 "bbcc50db602d82b3347d00301ca40fa24653c2e5c08ccb6e70a401a607b04e1b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-5619655.tar.gz"
    sha256 "53b394d20b5ce4846c6146578fae949a4a9d23797aac1792aa787d9ce2000f33"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
