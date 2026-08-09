class ZktfSimAT0230rc34 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.34"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.34.tar.gz"
    sha256 "90d4c35ad512b342d7c9b13555c29ef7f009acc081db4c3182f6d2b094a0cfc5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.34.tar.gz"
    sha256 "222eff0f0987fb3b5691afafa9e742ebd12b569e41ee7815d34bcadd14d6d2ca"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.34.tar.gz"
    sha256 "587c69eff1a1f62781cdb90f176c6b2f2f6676beb24ce0d13475d014763c7243"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
