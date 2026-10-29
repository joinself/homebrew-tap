class ZktfSimAT0230rc93 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.93"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.93.tar.gz"
    sha256 "10a065f9057ab8e952f412d2e0a420c1d7e163a3a3346ac2be55ba3fb9e1ef4f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.93.tar.gz"
    sha256 "0df54049e05c88a3e4d52b3b6e42a3eaa3058db5bfd5afa2174a6f97dc7f4b28"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.93.tar.gz"
    sha256 "286ed66f0349bd09ab2ca5da7df124740b14a0e3f38f9ea119b1942236020005"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
