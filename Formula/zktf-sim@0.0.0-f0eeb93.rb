class ZktfSimAT000f0eeb93 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-f0eeb93"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-f0eeb93.tar.gz"
    sha256 "4487fd1104bfe2384f3615a027f10b1e02b9d26148e1b626b9bee73af05bf70d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-f0eeb93.tar.gz"
    sha256 "af54dac9f698e6e13ea4bfeecceaf7494b15bfb498da3b1e5563107f680a0529"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-f0eeb93.tar.gz"
    sha256 "87a239717ebaf2f4263f23aa5707e9f1cd8b300c32c0ba8370282891eab582bd"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
