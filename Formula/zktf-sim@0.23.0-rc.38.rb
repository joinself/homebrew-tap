class ZktfSimAT0230rc38 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.38"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.38.tar.gz"
    sha256 "8eb4f0346c8e0723409dcaf3e46db7a80975f9d822e5ddf3dc884c9c0888b84f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.38.tar.gz"
    sha256 "4efb11d2521a88400f9ca0d042ac7225b5339205131836d7534bbde54f9cdc13"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.38.tar.gz"
    sha256 "7bdee2e3d30600f60fa170c10c0c6aacfb85427ed64a5b80924fbbdc97f6625b"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
