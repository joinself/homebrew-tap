class ZktfSimAT0000e6b8d2 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-0e6b8d2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-0e6b8d2.tar.gz"
    sha256 "9a825bb007a5c8ea3b8e74f2d5294ffb8c7850cee08a3d21d2c5963186fbc70d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-0e6b8d2.tar.gz"
    sha256 "e84c3666bc978aa7d983fce3254fb9a406291f8b515f66fb079bba9576267ec9"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-0e6b8d2.tar.gz"
    sha256 "eccf85ba8aa25192170f5b6fbc0e603355f96779ec9c4189f31c14198b71115e"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
