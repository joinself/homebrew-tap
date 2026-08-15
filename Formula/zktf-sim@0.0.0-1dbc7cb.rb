class ZktfSimAT0001dbc7cb < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-1dbc7cb"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-1dbc7cb.tar.gz"
    sha256 "1b827db127993cb6989a314862e24968e7e82d4149cdbde7ffac655475c937f9"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-1dbc7cb.tar.gz"
    sha256 "5f44e70e5ba4e1584ece71ac359476ef70af7018c52302bc2d26d7846552187c"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-1dbc7cb.tar.gz"
    sha256 "39154a3a2b4247c3f39a32ddcf324d9ea5cc36874653c35da636ba90ff48de53"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
