class ZktfSimAT0230rc77 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.77"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.77.tar.gz"
    sha256 "30c37b1204f727d090f24033f925c2696e356b8d8c0b9ee15bc8008eca0be11d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.77.tar.gz"
    sha256 "c3cfd5061466b29cf256e4c458770ca94264960a1ee85206eba3fe55a2a77b20"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.77.tar.gz"
    sha256 "5642657a50147315616c3352f265ff99aa39b4fc3fe7849544948b37fb7c9b4c"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
