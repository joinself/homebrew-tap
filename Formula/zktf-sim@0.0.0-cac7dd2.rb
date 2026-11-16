class ZktfSimAT000cac7dd2 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-cac7dd2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-cac7dd2.tar.gz"
    sha256 "1ba15524f64f6f45a9042b8d518d0d8e74ad94841313d191b12367b95f659ef5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-cac7dd2.tar.gz"
    sha256 "365aa692709870867374dab709f13ba91a6c0529950a081dc63e1979257bd7d1"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-cac7dd2.tar.gz"
    sha256 "84dba466347cbdee4caeff72702b3d8cb7d18d4b20af4b2b25928b8b42dc9093"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
