class ZktfSimAT0004bfe782 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-4bfe782"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-4bfe782.tar.gz"
    sha256 "546b1cdb1d0c9f8a8b702ebefe9c4112aa6af4c03357a195ec4e2db78b23b753"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-4bfe782.tar.gz"
    sha256 "667f00ed1797a493cd3ce5512b0cfcf30512e0fdb13db7840c95b81edc073d86"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-4bfe782.tar.gz"
    sha256 "bd51ecdec901e7c47476b6a924ea8ffdb86f6deac7e9e865ff4aea9c6130ccd0"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
