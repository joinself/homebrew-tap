class ZktfSimAT0005a0b584 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-5a0b584"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-5a0b584.tar.gz"
    sha256 "61410e4380e98aa2ad96e7d668b48b2a916d40e7ef30bba1b40cbcd67bc3c819"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-5a0b584.tar.gz"
    sha256 "a17c4997f74a4c8bb9b1ff43977d95001e50fdea951faab17c90a91873ff6d82"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-5a0b584.tar.gz"
    sha256 "8880866a269a9e52b490d987af122940b24c79b6073b7ad04d2676542e301f51"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
