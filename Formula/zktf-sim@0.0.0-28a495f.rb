class ZktfSimAT00028a495f < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-28a495f"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-28a495f.tar.gz"
    sha256 "b60852cd2fa3151ec267dfd7c4adafd4612738a29d1768f948f6876741124e4a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-28a495f.tar.gz"
    sha256 "db06ddd3c451bcfc99fb1e09d9ee87162b2782525ac79410d3d292dfc7489ba2"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-28a495f.tar.gz"
    sha256 "a199b8b64b008ef68c9e2652ac7f704d88fd461fbb6293e7f0c52745e8f1df0e"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
