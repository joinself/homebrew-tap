class ZktfSimAT0230rc15 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.15"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.15.tar.gz"
    sha256 "ab710175fe958b54418c97de8326cda5147b4a2e0428c3bae66d02b719642840"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.15.tar.gz"
    sha256 "b4db0cf2a205a7be826a6a82fea01f3d7be232525193bfc056b4593a73e63d91"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.15.tar.gz"
    sha256 "d611ee87451829641209c336791cac80cc957d15ad1a5a2c3bc9ced44207c6bf"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
