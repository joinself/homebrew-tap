class ZktfSimAT0230rc75 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.75"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.75.tar.gz"
    sha256 "a454ed4e4cb780e745c818dd40d33941425af096bf5843b0da14671f50f8b4d6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.75.tar.gz"
    sha256 "db48d15da99010b91e46f0043f975a8343d7be1c6cc6f8d1fb9b6cfdd28fb370"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.75.tar.gz"
    sha256 "52b15ee26e1c137a5d12dd28a616c481b11f723cc26d598c5849ef3002425e51"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
