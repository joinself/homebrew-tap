class ZktfSimAT0230rc27 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.27"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.27.tar.gz"
    sha256 "e368c3dde37eb9de4954ee80da33d1e5ff1beb3b2fafa3aa1140ebe359ae484d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.27.tar.gz"
    sha256 "22f26b9216d040fb15926617e330726a5d88e56f01e1af43d2077ed7e1e243cd"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.27.tar.gz"
    sha256 "18698d7da8d402a14c1b3de0f81f5c895a900195ebbf404431a409f2e3ed3ced"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
