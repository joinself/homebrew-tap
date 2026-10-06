class ZktfSimAT0230rc72 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.72"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.72.tar.gz"
    sha256 "1f93873b6dfe2a934a63608b0d47327daf5afe25f45c5eac125e1079282e74e9"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.72.tar.gz"
    sha256 "5fb07d6b325a217cdffa8db42c59173991443584703b6634bee430d0e7a83f89"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.72.tar.gz"
    sha256 "017fb6191b8136c8c71225248d17e7d9d20e8c0b12351b444fd1e54315bbe15d"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
