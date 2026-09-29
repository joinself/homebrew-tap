class ZktfSimAT0230rc65 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.65"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.65.tar.gz"
    sha256 "72fca6241819beacb5fab81dcbb83d204ff04b59c932b0d8d979ba0890adeffa"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.65.tar.gz"
    sha256 "0d4d8036e52e3d09189fa5deee563bd737518490b2a3d8e74fa67d4f904f8c6e"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.65.tar.gz"
    sha256 "7c068458df16bc73960dc8ab463fefde36551d3ffa8d24b05ab5a18255f9c365"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
