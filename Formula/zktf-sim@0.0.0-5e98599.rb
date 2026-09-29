class ZktfSimAT0005e98599 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-5e98599"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-5e98599.tar.gz"
    sha256 "d3bc05f6a61973eedd3c0379e5e0ae10a184632d376196ec56261e1a04078b55"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-5e98599.tar.gz"
    sha256 "f647287f43bcce13ee80b6e43b5446c5f82cabdd097760fe053586c925c16ffd"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-5e98599.tar.gz"
    sha256 "fa46779dcc0925dc48212a251f85b8f835a59815bd4030ea3112360be6d15bdf"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
