class ZktfSimAT0230rc30 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.30"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.30.tar.gz"
    sha256 "98d62bbdc654bf2693fe9c31047539628beff07613a015cf3219d5be73ac7588"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.30.tar.gz"
    sha256 "1e25bfe1c3c962a2aa132f8acc5ae478d795c6823f454aaf39d8269978a97917"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.30.tar.gz"
    sha256 "6c3bad3826a656dd2ac3fe92e7754904331ce0ccc179f070219835d1bddfb7a6"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
