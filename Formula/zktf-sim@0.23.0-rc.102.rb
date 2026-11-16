class ZktfSimAT0230rc102 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.102"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.102.tar.gz"
    sha256 "725d3c60906d5b108a67060db73c5f36ca2590b180a54e9d8244ac13685aaf80"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.102.tar.gz"
    sha256 "db0bc87b3c21fae1a33b9383963dce4acad2a3b6117bd60f117f34bda6add08e"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.102.tar.gz"
    sha256 "10074779ac581d53fa633ad9641c1a0cba4ee6887a2e25d7f231edeb4c24bbe4"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
