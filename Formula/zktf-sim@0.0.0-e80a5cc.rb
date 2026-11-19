class ZktfSimAT000e80a5cc < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-e80a5cc"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-e80a5cc.tar.gz"
    sha256 "af668485553aa11c368f1805278149bd88d7d8de7fcd009f42c355472aa519f8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-e80a5cc.tar.gz"
    sha256 "e6e030c79cd8e59b9cfb21ccad4ed6061501075b5b9edce875bdba98828d9873"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-e80a5cc.tar.gz"
    sha256 "f23e4c6f8967a45c304c7863e426466012321075ba32a3cca071f03cc722760d"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
