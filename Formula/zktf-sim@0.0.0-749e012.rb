class ZktfSimAT000749e012 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-749e012"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-749e012.tar.gz"
    sha256 "457d6edc087c93477a8919324212632021bb413a836e2fe807d122d638b206f2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-749e012.tar.gz"
    sha256 "b16d4a96e2baf3c2f3ff492139158333678e8e7361ed3c6ff5f3b595b94941cf"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-749e012.tar.gz"
    sha256 "72afea613ca0398ebdd7e92cb00a047431fa03f5e039f05ea58d7ee6a432c272"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
