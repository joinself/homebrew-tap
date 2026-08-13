class ZktfSimAT00039474a0 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-39474a0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-39474a0.tar.gz"
    sha256 "70de3c122cc78bd2c91b5b8aa5a823b496aab4ac5481ee191d0737c7c7cabf21"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-39474a0.tar.gz"
    sha256 "21df8b40349f2bc06a1f02ab800b3d30e8ad77f30e87e3d0fd1f02a1e0eafa9a"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-39474a0.tar.gz"
    sha256 "b25a6edef5441bb6a82b86275265b009dd82a6049fe27890c0d3559b4e10cbeb"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
