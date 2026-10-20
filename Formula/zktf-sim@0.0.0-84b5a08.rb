class ZktfSimAT00084b5a08 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-84b5a08"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-84b5a08.tar.gz"
    sha256 "dcd4e757acc9d65b7df1083a8c246c5f9b011d2908d1230d53db5a55f46804af"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-84b5a08.tar.gz"
    sha256 "d32519a69f8375f7b7a5815b27f6ea82ca8dc94d6f5fecffaa0c8dde94e2bfaf"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-84b5a08.tar.gz"
    sha256 "6da1119533f733d71a429bac91a6d128a5a827baedb202493df362f169dce9d4"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
