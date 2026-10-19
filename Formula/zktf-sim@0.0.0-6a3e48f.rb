class ZktfSimAT0006a3e48f < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-6a3e48f"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-6a3e48f.tar.gz"
    sha256 "c6350b2d2b4474369bf5104217abdbafde7fde800cbc991362de25a92412acd2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-6a3e48f.tar.gz"
    sha256 "cf862686ec627cf2c44538dbbf6e1a5f46036149041fee564d2a7ad7e1a74f58"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-6a3e48f.tar.gz"
    sha256 "1b49c61e98d10f401f5ca531e079c3f95ef41cc98af898270fd0cdbf7ea79d5e"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
