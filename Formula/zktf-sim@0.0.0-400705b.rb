class ZktfSimAT000400705b < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-400705b"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-400705b.tar.gz"
    sha256 "575530d7315eb7ba2bdfc98b25d9487e6cb362fdc89b672b40ed4fac2732bdb7"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-400705b.tar.gz"
    sha256 "d3f3b4d5c66767663100754e57dd0b6fb5655c6e43136ac8b51504ab38609108"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-400705b.tar.gz"
    sha256 "2ce6b21b29d3569e3c9ca5f8cbac8d10d4bf63ec68f86d92808963969e59f755"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
