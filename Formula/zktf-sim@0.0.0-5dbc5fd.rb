class ZktfSimAT0005dbc5fd < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-5dbc5fd"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-5dbc5fd.tar.gz"
    sha256 "c21bad39beec823aa3aa93cc098e55c0b1241c3df3d92a60b313389be3f7bb8e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-5dbc5fd.tar.gz"
    sha256 "8a76983ea9da7d5fd98624b9b4b6b59f70ffcebb4ac71056728e6b67616251cb"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-5dbc5fd.tar.gz"
    sha256 "99fef510e46f81d14f0fc8c92d37bf86fe73be0de8d735b2de37c060a2dcbcf8"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
