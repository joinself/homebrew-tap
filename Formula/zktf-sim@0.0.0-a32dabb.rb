class ZktfSimAT000a32dabb < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-a32dabb"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-a32dabb.tar.gz"
    sha256 "e1722a8d6f96af415d56e498a44dc3084c18644f613477030ae9422f8003fbd3"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-a32dabb.tar.gz"
    sha256 "132ea37061ecf26ad016fa076eeae15c8974f7c98d5485ca4960c912ec492e61"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-a32dabb.tar.gz"
    sha256 "87ea626f5c5e6ffc476f81d2d0da585e5e245d74b869f53ad50b2fb0b16c02ab"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
