class ZktfSimAT000fe6d3e8 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-fe6d3e8"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-fe6d3e8.tar.gz"
    sha256 "0b27baf26f8a03e7171c4edd4d632aa1cad424848b876976e191c17dd9481990"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-fe6d3e8.tar.gz"
    sha256 "842d700274d011786d030746d1ec3b7c5fb265ce8493a372bfb0b13279ee216c"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-fe6d3e8.tar.gz"
    sha256 "0a153c3bfebc3b583b7ee3cd1bb9fc95696f4155c540da843f8b192f6b045876"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
