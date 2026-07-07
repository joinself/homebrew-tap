class ZktfSimAT0007563952 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-7563952"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-7563952.tar.gz"
    sha256 "a3332d8bd296c03f9ddb044d8c7fb30f1fde03e17c7ddc09259d1b877dd0cfa9"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-7563952.tar.gz"
    sha256 "583c96f94346507e5c9a6f1759f9e7ccff386f19a024e97692cec57892a40ac8"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-7563952.tar.gz"
    sha256 "5e631987e4d5b2bfc782d7cfa95fc8b346424277f7c503c6d938e09fdd034dd8"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
