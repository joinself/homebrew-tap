class ZktfSimAT0007b932e9 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-7b932e9"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-7b932e9.tar.gz"
    sha256 "55a6617cf1652c0f561f6900c98338a1d6737268af56c92b1560758a73101579"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-7b932e9.tar.gz"
    sha256 "c00e3b37c72b2a54183980ad99ca9e20b6d557a743cd086feba09d91bad37304"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-7b932e9.tar.gz"
    sha256 "11e5ccde896edef9d5f2bc3044ae7b1e0e390840ce62b888ae5c09c4d866a655"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
