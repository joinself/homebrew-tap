class ZktfSimAT0005bf0966 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-5bf0966"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-5bf0966.tar.gz"
    sha256 "0c2fa05730a5ade3b7a14efa480f5e2ad9486711a2fb1b6165e495e7342df4be"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-5bf0966.tar.gz"
    sha256 "c0ae6c44213dc6c468e660879c7dac2a3324efa7b7e37acbd7e44b8c487d5ed9"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-5bf0966.tar.gz"
    sha256 "3e1a6478ca78151eb63791081902eb7752b563851f2442dbdceed79f34cc4551"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
