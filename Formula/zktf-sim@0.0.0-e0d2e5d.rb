class ZktfSimAT000e0d2e5d < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-e0d2e5d"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-e0d2e5d.tar.gz"
    sha256 "0f40912386aab565bb7cf27baae4e429cb9e9aeff41e8672d2ff7e3a4396b58c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-e0d2e5d.tar.gz"
    sha256 "220de25e35d26d60b482a10bc9993f4287ea3be52b21efadb79526f04920ed4d"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-e0d2e5d.tar.gz"
    sha256 "bf493b7208082fa5826d6e9993521c327c1f675c6a84f3b79384ec8f97d5e03c"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
