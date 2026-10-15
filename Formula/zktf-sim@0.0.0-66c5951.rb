class ZktfSimAT00066c5951 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-66c5951"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-66c5951.tar.gz"
    sha256 "6800de4d03deb96a228bda0823cf4c2ad29f74524069f2bfa1b71c2b5d6a1c9a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-66c5951.tar.gz"
    sha256 "ff8d92a93300108e28b706aa09cdef1afc3f5098e41866a0067159ff0f251a14"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-66c5951.tar.gz"
    sha256 "4c8b323173be77bc92746a3294833afe4b4976c3a98b76b232a36183e98f72e3"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
