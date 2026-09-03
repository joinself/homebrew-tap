class ZktfSimAT0230rc47 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.47"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.47.tar.gz"
    sha256 "fb9f319405ad722612707c30cc11cf54dfa86dffbc8af84c0f81a59e6d660ac6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.47.tar.gz"
    sha256 "82ff634ca525b96e2dea0f3391255c6739691b6240c7873f878bd16b9061c687"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.47.tar.gz"
    sha256 "2017f16e27c219df5166bc9ea1e0d17570765ac203f52ac718636f7e7d23040d"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
