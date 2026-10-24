class ZktfSimAT0008ab1f9f < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-8ab1f9f"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-8ab1f9f.tar.gz"
    sha256 "e9a77acfa079dd1cb004afe4b40c45cba175dc2852ed909591f859cbf8db79c3"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-8ab1f9f.tar.gz"
    sha256 "4d0064ea55fe99d05b89c558fa35621698310a8d0d0a136fa1ebd89046a144d1"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-8ab1f9f.tar.gz"
    sha256 "0f069da96230ecb06a6bd55f6f42a99f1878d16c91657c8e34747f154a684270"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
