class ZktfSimAT0230rc25 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.25"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.25.tar.gz"
    sha256 "d32ca3258bb09c778e94d87e1cd067006bbc80520bfe775a68f3caad53e2cb14"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.25.tar.gz"
    sha256 "786b48a741304f4e35e8e20a640abd9c79b22fe664c41c5dd9481191a93a8bfc"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.25.tar.gz"
    sha256 "680e43da2170049b74cfdc1574029f252157b733b2a8cb2206e0345e6acca3ad"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
