class ZktfSimAT000ba3ac9c < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-ba3ac9c"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-ba3ac9c.tar.gz"
    sha256 "f5c2158c6293901d6ad16138e8392b09ff169cdf8505da1c3c0ba30347153586"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-ba3ac9c.tar.gz"
    sha256 "caed188365bdf26481d968cf10f4ff420caecef8b1675bd17623af8b6e182717"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-ba3ac9c.tar.gz"
    sha256 "544b69fc55ac2aa575ee120e8e0e586fd493e4d2b953c25192cb56275b3f81c2"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
