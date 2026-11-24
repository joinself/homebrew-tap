class ZktfSimAT00030914e9 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-30914e9"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-30914e9.tar.gz"
    sha256 "b0fba5ff27a4be97e37df60f35876b49d522ccf5e58597a204bdb954fcd7dbfb"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-30914e9.tar.gz"
    sha256 "7ce32f6644856941ce44a02e90e2f879ad63cc32241991ceaa50ec873b4f3ae8"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-30914e9.tar.gz"
    sha256 "3f25f214a5c4c5808bcb114431f0ec074cba6af5541b8089b4e20427f620a1a3"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
