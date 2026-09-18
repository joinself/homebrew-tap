class ZktfSimAT0230rc50 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.50"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.50.tar.gz"
    sha256 "429d176f5e71bd84de187d08cc0f259251c3b82484031e7a8c4a7bcceaa374c4"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.50.tar.gz"
    sha256 "18d5ba40e2da3bff71e91b432378caf715cd42b6c501bb0b8856cd61bccf2b11"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.50.tar.gz"
    sha256 "0bdf17977f7298725afd39c52ba5aff3165eef500bc6fefd5ed96b0559d8eb22"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
