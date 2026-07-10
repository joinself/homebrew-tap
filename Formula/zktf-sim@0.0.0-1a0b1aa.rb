class ZktfSimAT0001a0b1aa < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-1a0b1aa"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-1a0b1aa.tar.gz"
    sha256 "b55c92c4b0aa85a760c37b124c905402534e42d50de8349ace476a0c4e7f606e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-1a0b1aa.tar.gz"
    sha256 "4b5734af17d13c079f5f1ee2c1483296f9f67011e59d45dcb20e4963520267b8"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-1a0b1aa.tar.gz"
    sha256 "91442d90410870d528ed0d5f5d7afa9a01149b940baaccda5c8be587650d53d2"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
