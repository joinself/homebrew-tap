class ZktfSimAT0004bfe8a7 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-4bfe8a7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-4bfe8a7.tar.gz"
    sha256 "608e4b2355b6a18824682ad574d12005558a835cf25e28bf8fbc629f840cdefc"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-4bfe8a7.tar.gz"
    sha256 "98117ac7c81f425d8f623cdffb153a2194b8383ce4437e0816b75d49eadf27c4"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-4bfe8a7.tar.gz"
    sha256 "cccacc6afec91fdd1427a5c7e6c2d95e124ef08b09b34068f5bce69f19f4761a"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
