class ZktfSimAT0230rc92 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.92"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.92.tar.gz"
    sha256 "854fa3b4d07d44256232239327eac1fb2aae11519ace702c69bcf1dfe17a8cdc"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.92.tar.gz"
    sha256 "a3a63827ed974cf36fc9a33ca38f969da9ac027e779feecad52a4270d75f702d"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.92.tar.gz"
    sha256 "7361de4d2aa90dc01f4ccf6f62c5087b3b2054a9cdf0e94235ddb4a3e306b7f4"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
