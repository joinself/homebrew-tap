class ZktfSimAT000d38d17b < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-d38d17b"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-d38d17b.tar.gz"
    sha256 "750dc7451bdcdb411039be337721f5fa0a2d7f72ab7a461369255c57fa8507cb"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-d38d17b.tar.gz"
    sha256 "f73efd259ffa4e0a01fa6c8c331fd5e169f31b77419e1b569ae7fd70cf0da463"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-d38d17b.tar.gz"
    sha256 "e1d88d0ea108158061fd0262e40088dc54ae87864f236e78b8e1456da32de736"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
