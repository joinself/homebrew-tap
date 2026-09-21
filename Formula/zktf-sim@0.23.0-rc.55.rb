class ZktfSimAT0230rc55 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.55"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.55.tar.gz"
    sha256 "1a1d380e047fa9dfd6a89d8944a21e17df4ad00407d7f42d892f4a89819faf2d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.55.tar.gz"
    sha256 "e7a557e157c541064b88941b3267ec8c002cbe780148ae96d65647a7b2f86c42"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.55.tar.gz"
    sha256 "9ef3400ddbfffb0c99ea251aec5abf718c10d8aa865527b8ffe0ebfd0c186ded"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
