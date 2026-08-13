class ZktfSimAT000ca847a7 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-ca847a7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-ca847a7.tar.gz"
    sha256 "fb988dcceb8b6720e23543c0b347bdb175338e5bfd2125efc88a806da426435e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-ca847a7.tar.gz"
    sha256 "479c9c7d0a27da884802b26b66559405946284673dfaac88c987c851a37084a8"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-ca847a7.tar.gz"
    sha256 "333afd012c3797b002a9024858dd3ec4f89f759d046b169399fb8b9df92cca6f"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
