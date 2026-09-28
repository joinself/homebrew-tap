class ZktfSimAT0003c01da1 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-3c01da1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-3c01da1.tar.gz"
    sha256 "6b6a7881934221e41557693589f8ca9cfbd6267062d8aba7b53cc3da8c53a305"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-3c01da1.tar.gz"
    sha256 "0f5befb87dd3b8e54ff8b50332b39a6168d022c1912700cadc23091dfa282b52"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-3c01da1.tar.gz"
    sha256 "7b09d441463c91bb464c32da28bbdaf305903b7cde67a739ff6e49cf801f0553"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
