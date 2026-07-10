class ZktfSimAT000ea6845b < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-ea6845b"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-ea6845b.tar.gz"
    sha256 "97c1f90752aab9f6746cf7c5cd62db0d19f9bc1da5425df724d2bb6250e370a4"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-ea6845b.tar.gz"
    sha256 "77fcf4fc9d310d45d6b09276c3719f3a99486afa648586d284cf35fca8c796f3"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-ea6845b.tar.gz"
    sha256 "52bcfb0ccfacfd0d85fb3ebfd7396d336cd13ea6aa352ae8819067e5003792b8"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
