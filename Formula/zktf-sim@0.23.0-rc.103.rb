class ZktfSimAT0230rc103 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.103"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.103.tar.gz"
    sha256 "e78dfd4dacd7e710c24c2e1f0036770fa0574d19532c2598fab3966a70003a47"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.103.tar.gz"
    sha256 "36511784dce931f67ffc82ad11cb0c5eb2a2012446b367adb021556abcda77d1"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.103.tar.gz"
    sha256 "70b3edc84b1052355db38058f51afca141402f70f22670513b5ddd0451b8f40a"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
