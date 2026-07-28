class ZktfSimAT000ff170e1 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-ff170e1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-ff170e1.tar.gz"
    sha256 "2f3c16029991c6aa96f93660516c2efd214a627a084162a1e11fc235d3c7f2a9"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-ff170e1.tar.gz"
    sha256 "3064eb16536f3676b1d5b91b99a526a4430a83292c35510e350498270f1d7d0e"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-ff170e1.tar.gz"
    sha256 "c915dba65d0f6cfbd779b46f7128b4ad177966e1e1e84fc84ae9c1307dfd82d0"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
