class ZktfSimAT00060aae33 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-60aae33"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-60aae33.tar.gz"
    sha256 "973473a903d0356d64b1fd13860fa347609a7b04b53046584f5ca826269cb578"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-60aae33.tar.gz"
    sha256 "2f2f901610d4f4198a972187d5f9b77cc1ce82cd1f802b91592e3087d7db570b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-60aae33.tar.gz"
    sha256 "2293890821a2ad4642ff4fc13f34c3bc68e7aaba716ddde7d279da7124bb43dd"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
