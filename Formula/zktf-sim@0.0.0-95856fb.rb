class ZktfSimAT00095856fb < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-95856fb"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-95856fb.tar.gz"
    sha256 "70cc2f4be6707bec2efb3512ea104a18162d2415b9412b064313f6877bf21679"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-95856fb.tar.gz"
    sha256 "bbb5a6b1295b3214b1418a556acb4dbce6a8ddb4facd681809787b82e5f6e010"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-95856fb.tar.gz"
    sha256 "b25b540e3dec21ccd104d771ffe35666a92e3bea5e9388da27e204e6501f9aa3"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
