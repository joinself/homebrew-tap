class ZktfSimAT0004f2f0af < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-4f2f0af"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-4f2f0af.tar.gz"
    sha256 "b5126e32b476eb18338e078cebc23919965114b08852b15c1ce9f92ddc02e7ad"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-4f2f0af.tar.gz"
    sha256 "786a9a7b77643108bc55fe0ec2b98697fc2ede427d280ea4f7fa642479b75819"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-4f2f0af.tar.gz"
    sha256 "d8747c01123f64c4fef1f60860d4aefc1495f74396b9d049dc8c62440809d549"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
