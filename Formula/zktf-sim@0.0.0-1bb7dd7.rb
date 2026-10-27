class ZktfSimAT0001bb7dd7 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-1bb7dd7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-1bb7dd7.tar.gz"
    sha256 "c93bf49f96ffdf89d8ebde34a701dc5f7bde06776496819957171479f52e683b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-1bb7dd7.tar.gz"
    sha256 "2bd0c990d98188d3ff2e6c7d0d74f73b8ac333d630701838350640ce3d6e4a7a"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-1bb7dd7.tar.gz"
    sha256 "8550a0600a8698f2eadb0ba82097638723220be7001e41b717bec8be804f57ce"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
