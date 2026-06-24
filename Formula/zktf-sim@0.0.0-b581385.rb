class ZktfSimAT000b581385 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-b581385"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-b581385.tar.gz"
    sha256 "113ff9209f11d48e0a4938bcb5cfc03380cf28414287f6fbb18be78fa0a0ac91"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-b581385.tar.gz"
    sha256 "e6ba67eb36483e60f0aeb337d2ca08a613da2c1461e977d0fd7fdaa004907a9b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-b581385.tar.gz"
    sha256 "e942cce882fb2372314d5452d46b71fbcdaa85397387dc6150ade94ef987372d"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
