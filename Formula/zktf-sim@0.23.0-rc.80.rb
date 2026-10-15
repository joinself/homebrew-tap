class ZktfSimAT0230rc80 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.80"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.80.tar.gz"
    sha256 "ce2556adbc79ae163bc7aead37783b959c1779874dc6970dfd6503af617c7afb"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.80.tar.gz"
    sha256 "0e298bd491fe806ed5e724ae8d8ff6b8f5cc77adb0463526e16aa3871c61297e"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.80.tar.gz"
    sha256 "9f754f1bac4a83c9f659470f80f3c5059ac8b5cf75237870ac23f2f302cda6ef"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
