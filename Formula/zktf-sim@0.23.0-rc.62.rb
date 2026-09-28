class ZktfSimAT0230rc62 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.62"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.62.tar.gz"
    sha256 "6ba3e4b663e5cb25d785679c5c21e42a919f0f774550b2abd53d4986814fb00b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.62.tar.gz"
    sha256 "b520eda77c3c6217edb5d70b78966f29854c9473b85744495ed9d1e631f0dee9"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.62.tar.gz"
    sha256 "c9a7e4e2025fe1c4a0a9cd01ce8e1aaae2711aa8e70dd81f0b403ca06a2e93df"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
