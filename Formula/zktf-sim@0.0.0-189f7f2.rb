class ZktfSimAT000189f7f2 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-189f7f2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-189f7f2.tar.gz"
    sha256 "05d8e622e9823b0cce755eba99bf0eed0c47259fc4a6f6736c3015a3f28b8b44"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-189f7f2.tar.gz"
    sha256 "236b551884ebebb37b2df6793f9b1857122be81fbd062d20dffb32f2fe265d53"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-189f7f2.tar.gz"
    sha256 "58af041361a7de2e8b0827a3664bcc8136b340e8f877dbd0195958b60830f3cd"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
