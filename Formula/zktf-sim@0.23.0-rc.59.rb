class ZktfSimAT0230rc59 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.59"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.59.tar.gz"
    sha256 "5c646b31b134eeada7e33c9a9d8d4788977a2eee9918dfde02b896a2cb2f0367"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.59.tar.gz"
    sha256 "8598068a8780e2b0c672b29c72533f6a8cddf003c31aff51ac541e2519a4165f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.59.tar.gz"
    sha256 "f56ae458404cfb4a4641f433fb97e9f7c998bb7537c36a22fb49422e1b20d8b8"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
