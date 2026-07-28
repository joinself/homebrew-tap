class ZktfSimAT0230rc23 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.23"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.23.tar.gz"
    sha256 "3b50f4a4d58d83518ea932a24ba90d2cbba608d614b356774e5976afb298f9af"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.23.tar.gz"
    sha256 "0db573f9a6db14a4a429315a20d6e058f738a4a4cb018f60fa15f5cb3f39e833"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.23.tar.gz"
    sha256 "7a1384a4b03850c5b8c1c50ad06b32b6b44bc4cd6f5af3fc25261da676f5310a"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
