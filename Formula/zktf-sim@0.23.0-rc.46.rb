class ZktfSimAT0230rc46 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.46"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.46.tar.gz"
    sha256 "ef748a91b41a9b5f79afeec60cf07bc541b89d9a8dd2be0a7e9235e6b6233e33"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.46.tar.gz"
    sha256 "377fad26f31cb654ba8d71214b0b15a5a85643500cb0041ad81cf7f9af29eb26"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.46.tar.gz"
    sha256 "3a7b08e8255c88c58b8989c43bd74a2ca66af38b31ababbd81c0486d8c3aa5d5"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
