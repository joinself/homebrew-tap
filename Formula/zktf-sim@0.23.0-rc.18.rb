class ZktfSimAT0230rc18 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.18"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.18.tar.gz"
    sha256 "f77a29228e875dc732a9b9c0f72f38a8ef9d1c09753964efb6faeb18462314b9"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.18.tar.gz"
    sha256 "e5b964e63b60373dac8ec3ed0a1291bfa40ba47bd54ec052c42ff95f3fd1dc09"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.18.tar.gz"
    sha256 "a948f1b54eb7a54ef345cfc80a5fa4d72a5ce23fa9dbc7625651c1d236894e84"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
