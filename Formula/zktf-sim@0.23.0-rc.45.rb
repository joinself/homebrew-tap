class ZktfSimAT0230rc45 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.45"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.45.tar.gz"
    sha256 "db1d4bf025e338418f398a93f5ae19c31e9af86ef04b14d9b0fbba029c9e435b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.45.tar.gz"
    sha256 "08033837772e0cfc069570319f1a6cb3089427c73b5b65dca074c6373d00f29b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.45.tar.gz"
    sha256 "cd4f319c0c37aae4a11b423acc9f389c45cf0d8874b7397919cf1d0b98c19c0b"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
