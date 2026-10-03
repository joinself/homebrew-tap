class ZktfSimAT0005588e25 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-5588e25"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-5588e25.tar.gz"
    sha256 "1a3d78e2882b6444c85b975cd28739f70ab4f951b97dc84f03c8cb2442bafeab"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-5588e25.tar.gz"
    sha256 "19c97eb812cdbb96324891f0e661103cb9aead29b9ca3ee038920fe17f135909"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-5588e25.tar.gz"
    sha256 "ccbe5d9d9648d8c1eb70268426511480798a7b70becb8b8cad99a70c2e5e3412"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
