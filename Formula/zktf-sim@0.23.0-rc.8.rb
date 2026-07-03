class ZktfSimAT0230rc8 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.8"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.8.tar.gz"
    sha256 "a54037d49b2b19a7c794107a152d4db8245c0e108761556d40d8eeea34f8764a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.8.tar.gz"
    sha256 "ae19844826f87399e8d17f17d2fe457de02fe0e30adab924e29cca7dfab49e48"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.8.tar.gz"
    sha256 "5cd776fa42ade3b1befbd9436c1f2bb0b6c018d767c19668d515d824cadcd7ee"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
