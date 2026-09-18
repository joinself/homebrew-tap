class ZktfSimAT000d166b88 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-d166b88"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-d166b88.tar.gz"
    sha256 "3b6f255a6a272d738f75793917c697702d41ada0e4aefeec18fcd6798da6b4de"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-d166b88.tar.gz"
    sha256 "44f162cee7549ddb9e66ae260300ab67c76bd5352e6bc3f10d91b8c8e241a693"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-d166b88.tar.gz"
    sha256 "cc451ce0116ce74af2c8f67cebc9f655a26b94031ebdfa404793c3b7f9b34101"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
