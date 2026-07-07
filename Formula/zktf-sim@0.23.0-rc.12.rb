class ZktfSimAT0230rc12 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.12"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.12.tar.gz"
    sha256 "a27a986fd8635d00b5d149b51bcac5d386cf3ce3fa6182713e0d9a2c9045703e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.12.tar.gz"
    sha256 "2ed83c684dc2032a0ac767d62fde18296772e65483e695c0c6b8c9e9e16943df"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.12.tar.gz"
    sha256 "595f3a0826401f86a4ba19744cd0510191eb2306c61fdb6021b084946b62f80a"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
