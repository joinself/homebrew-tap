class ZktfSimAT000fc19928 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-fc19928"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-fc19928.tar.gz"
    sha256 "3b7d4f834f32083de7c3334a750d820344631d8b973592a7de136913e6a23738"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-fc19928.tar.gz"
    sha256 "bfe63856abf0b4d4be21e90ae2bed7223035b3f26e3e016f1035805d78947c6a"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-fc19928.tar.gz"
    sha256 "bc01bb7894586accf63b4ba527f6737c689c3d0b7fafc9c793f308ef38292c99"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
