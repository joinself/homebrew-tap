class ZktfSimAT0230rc40 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.40"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.40.tar.gz"
    sha256 "87fbc2b7454bd99952dec37163f17b8947e452529efbcfc7aba3bda3a11c0f17"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.40.tar.gz"
    sha256 "8aeb2a5d8398623b220c540a08c5b19917d5f5661ceb20147da89cfe22f67c64"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.40.tar.gz"
    sha256 "d61cfcef2fbace05bb5264443b3aec6fac1502a153ad644e2570a90f21db8051"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
