class ZktfSimAT0230rc31 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.31"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.31.tar.gz"
    sha256 "5c0392ec3e7b63559c48016dbab589bb28baf8803f9e4247c7095686cece847b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.31.tar.gz"
    sha256 "148d633e876a07e3df3778647221e82d51b3dd8869fcaf526089af8a71ddc983"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.31.tar.gz"
    sha256 "28d05583a3d8d698089f79aea8efd10421ac1da7c9c0d74eb41956b7ddb67abb"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
