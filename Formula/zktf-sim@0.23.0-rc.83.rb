class ZktfSimAT0230rc83 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.83"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.83.tar.gz"
    sha256 "6c095e8af2457f5b79e8bea6aed859a28d5b51f501285bca9ba6030d74cae14b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.83.tar.gz"
    sha256 "d53eed89c7b2cbd978c726be4fc81fe8a174c0ad98f71e5090d426a0ba096c81"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.83.tar.gz"
    sha256 "53d4a04cd03246dc0de3af2ac8ac6c77a4c2c96be173c3821612f18ffac9d87b"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
