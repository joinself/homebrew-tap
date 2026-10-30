class ZktfSimAT0230rc96 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.96"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.96.tar.gz"
    sha256 "a1c98d922956db56f183be59c0e69db837b987365ce79009656f1ff336d31417"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.96.tar.gz"
    sha256 "85baec62b671ff4e375c5e88c810d6e3f5e8909faff02f14622660328decbe70"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.96.tar.gz"
    sha256 "0cb14084e470705bda7117a034e0b81c0a67ed5126bbb0f2305664d254f30b44"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
