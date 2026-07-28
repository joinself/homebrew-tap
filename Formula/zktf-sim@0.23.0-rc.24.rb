class ZktfSimAT0230rc24 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.24"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.24.tar.gz"
    sha256 "c1cafccf2b220689190a65e30653c78e3251ce36bf308fa516d93bcff0334ce1"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.24.tar.gz"
    sha256 "ebfa7426d564e4188af0d3ca72969749eb485c12fac640770f0f5a5960ff71c4"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.24.tar.gz"
    sha256 "7c259adf46a07fe8b0eaa1aefb744478587e0c77964870380a784bbff31715c7"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
