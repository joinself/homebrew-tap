class ZktfSimAT0230rc57 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.57"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.57.tar.gz"
    sha256 "742a12481ff4bcd5431d411bf272673f47797b1b0cc3563eb3625d0287df10f4"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.57.tar.gz"
    sha256 "c826fb5dbcf9168e54742a942d73e3779b3ef44ab6b379168589968b49cea1b1"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.57.tar.gz"
    sha256 "69809a720b3ec88849c81cc2c5a7a821de5304a98fb2c9a57def45df4731c1e1"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
