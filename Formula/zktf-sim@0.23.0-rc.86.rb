class ZktfSimAT0230rc86 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.86"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.86.tar.gz"
    sha256 "b5c34f9aef626a59f71adcf12d9341dd74b6253c8a8156578da5da758a40ded8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.86.tar.gz"
    sha256 "c9af4fbf34b994c25616095e5128ad31980adeab66f7da383f01c9340517c590"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.86.tar.gz"
    sha256 "c29c26541a1053861439a8549a903716129976c7f9dea5de5f562677a2e74e80"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
