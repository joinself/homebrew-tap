class ZktfSimAT000a47584c < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-a47584c"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-a47584c.tar.gz"
    sha256 "5f9d32d7dbd82904d381144d8d63c6ad971c6f334d57f3cb902efa05e3658604"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-a47584c.tar.gz"
    sha256 "42f4b0efe728f2ebba5491555b9c3f7ce53d117e186b6b840a23f87bf829c408"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-a47584c.tar.gz"
    sha256 "61a0543e5e22cca1e29fe09cfc16058d8bed231e198b431851bf019b97d4d01e"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
