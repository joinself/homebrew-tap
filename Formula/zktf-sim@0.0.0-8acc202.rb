class ZktfSimAT0008acc202 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-8acc202"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-8acc202.tar.gz"
    sha256 "5a3b87b44cd804e38e110b2ad6eb64e6beed41c5070d3e98f3260ec9856ddc78"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-8acc202.tar.gz"
    sha256 "15ef8590d791b79d33326602173e5f35465d51bbe3a98cb882d183022539092c"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-8acc202.tar.gz"
    sha256 "302142ceb0e7eba1070a34ae16b1c96b0b181d79442850649b5f8ee1cc038448"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
