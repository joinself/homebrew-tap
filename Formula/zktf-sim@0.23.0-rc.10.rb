class ZktfSimAT0230rc10 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.10"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.10.tar.gz"
    sha256 "89996b00a82380f075a8e991024f4cfd89f508eac79249c732bd5b10470b918d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.10.tar.gz"
    sha256 "53fc27e98ee63f30962c45fa1d0c33bcf93ca836ee2cf6e72fc9246453fefd59"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.10.tar.gz"
    sha256 "173862414bb993e9b76426660c66af5ec0b681fd84983c8e4e17c24251d47dd2"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
