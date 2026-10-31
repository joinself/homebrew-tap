class ZktfSimAT00008f8d1b < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-08f8d1b"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-08f8d1b.tar.gz"
    sha256 "1153759f380b99a9155bbfe570885693109f7dc7e36568a430442b4b2cd916c2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-08f8d1b.tar.gz"
    sha256 "aae4150c374666aceea1ebeb3dd52c5b3a531890230122c70eb777046245c8da"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-08f8d1b.tar.gz"
    sha256 "b7dbe7eab37cc722dac5448229800aca1c7bda42ddb89351307d21027d48c743"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
