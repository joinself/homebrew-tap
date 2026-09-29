class ZktfSimAT00044f320a < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-44f320a"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-44f320a.tar.gz"
    sha256 "5c17755a7152967a63034f4a20e6955bb6f6aa21b24d6b16a6595ef72895d10d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-44f320a.tar.gz"
    sha256 "0d2f40069feffa37d99f0ea2894c7713c4c966087dee47e13b8da67ba2cc9ae5"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-44f320a.tar.gz"
    sha256 "a9a326773b3624a37f44793bed7ec6e2272dda99e2ae6b9ec27d0069a64d166b"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
