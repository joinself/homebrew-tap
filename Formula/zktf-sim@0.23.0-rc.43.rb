class ZktfSimAT0230rc43 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.43"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.43.tar.gz"
    sha256 "9cdd13e231939998fe182ccb2e6239443d6a7357e1118b5fa3184cdd7abc122c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.43.tar.gz"
    sha256 "d458b7eea287c54a1a14739ca2c0728ab17feeeeb21474a82b5bf1f84bcc1c40"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.43.tar.gz"
    sha256 "ee259d1090b330d9dad2e283080a65e395bf1b7a8861f79a58231f75b49a4b16"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
