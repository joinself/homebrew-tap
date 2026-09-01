class ZktfSimAT0005ebe29c < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-5ebe29c"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-5ebe29c.tar.gz"
    sha256 "f3f2dd2d25c788e55cd5bce5efd1a02f373cd34ebcc07621c30f825dc2e11605"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-5ebe29c.tar.gz"
    sha256 "602ff5a16fdfdface4e6831f7d5014c84045e192a2ed845b67e27552fc0d2aa1"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-5ebe29c.tar.gz"
    sha256 "f83bb0b325b1729f1501b444b9de75aaaea0e1cfefcbbac84186b42ab988545a"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
