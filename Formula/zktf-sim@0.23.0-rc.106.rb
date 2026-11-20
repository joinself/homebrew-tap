class ZktfSimAT0230rc106 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.106"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.106.tar.gz"
    sha256 "9110a568c4649fe14915f75b060281ec3ee8b32118661d919a37b3af58e3413f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.106.tar.gz"
    sha256 "d955d6797406b9f858faac01c411d3c632a8d3ad41641b995a18d69c229b640b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.106.tar.gz"
    sha256 "25ab32a3230f8c0381fed4d85aadd440f40d8196dbd3a7b81473533d030255a0"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
