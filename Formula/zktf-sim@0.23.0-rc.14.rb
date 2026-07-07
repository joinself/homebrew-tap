class ZktfSimAT0230rc14 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.14"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.14.tar.gz"
    sha256 "f0091c3576263d3652de925eae29e517c2a44182579fe9a1a345e842c5f1c859"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.14.tar.gz"
    sha256 "34afe27622854f94cbebc27e7fc515120db9f3a0b78483cadaf62a4d60922063"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.14.tar.gz"
    sha256 "6037448506142fa3ec1fa4e3b953c96a870ffc2e9787df22ba87d1d6a4ad8087"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
