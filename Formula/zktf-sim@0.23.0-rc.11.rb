class ZktfSimAT0230rc11 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.11"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.11.tar.gz"
    sha256 "9728d0c99e100e8fcec4833f6229fa7f6e57ab578d905118c45c7717110ed87d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.11.tar.gz"
    sha256 "22a3192318ee03f0fc2075ca5bcd5925dc7e5c8107e1f7f0a50834bdf4eafe89"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.11.tar.gz"
    sha256 "3d1cf0a8dcde79a4b9fac3f676f8cd293230f953bd4d12109f1a362fb4c75bf7"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
