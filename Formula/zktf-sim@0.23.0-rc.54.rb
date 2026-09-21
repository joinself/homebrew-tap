class ZktfSimAT0230rc54 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.54"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.54.tar.gz"
    sha256 "b9ffc5be6b7b11abfdd694b6787ca00e238c9d63c6dc5a4e6fe71297a2d6ba03"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.54.tar.gz"
    sha256 "78578a74ed397653a080191b1155feb5ee4aa8a99064c347bf675c734598cc8f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.54.tar.gz"
    sha256 "8df15c91aa4785af48bb10e950f5adb973da61ddbce5549eb22caa65c8a5d5db"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
