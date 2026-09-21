class ZktfSimAT000b28b1f6 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-b28b1f6"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-b28b1f6.tar.gz"
    sha256 "34081f5b38db64d85c22f378e916cf9837a541fe13b10f7d8837d65dc17ad3d4"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-b28b1f6.tar.gz"
    sha256 "c6bd8b23c2b98a3919f74e7a2753da02603abb2211455ff5094f7395469acae0"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-b28b1f6.tar.gz"
    sha256 "87e4729bd44cea82df5a5e866af4ea9a1fcb4ffd571797fcc7ee323704d3bf28"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
