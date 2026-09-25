class ZktfSimAT000d1cfdcb < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-d1cfdcb"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-d1cfdcb.tar.gz"
    sha256 "1c0af1475fa726d569cea4b06161b792a6aa990146b4273d08da91be1ded6692"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-d1cfdcb.tar.gz"
    sha256 "f79a73940cbc05b11b0384007445a1a369c2187d9d2252e621eb7b074aff51b5"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-d1cfdcb.tar.gz"
    sha256 "b3d408e0a71e15f8ffe3fdfd21bd75d9fe3efebbe5ead1f3efaa98553b985888"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
