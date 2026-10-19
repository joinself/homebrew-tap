class ZktfSimAT00006f067a < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-06f067a"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-06f067a.tar.gz"
    sha256 "cf2f064d8fde86295bb28b58434e9690a26d79806dea1b10e3da8756dd04f65a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-06f067a.tar.gz"
    sha256 "5df97f65377be9dccc2ee83ccae35054b647a98b88290a5278a241116a734a8d"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-06f067a.tar.gz"
    sha256 "099d4216e6c4d8a84c8c2b63519b656adcbc4c393447960f84bc1dbf6cc081b3"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
