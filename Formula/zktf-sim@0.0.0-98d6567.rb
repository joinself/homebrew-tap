class ZktfSimAT00098d6567 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-98d6567"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-98d6567.tar.gz"
    sha256 "e693912f71ebb9befff71217165f03c72217e217a9f80017bf898dd02e711dc6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-98d6567.tar.gz"
    sha256 "80c2afe706abdfd92fb97fa6e58a9b7233d15e4468ffdc31c0602fe38fea834f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-98d6567.tar.gz"
    sha256 "d22a8746fc5933c0d92026ca96a7c561aae8fcbba2a475137ea01161c985ae49"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
