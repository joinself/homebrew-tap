class ZktfSimAT000f13317c < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-f13317c"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-f13317c.tar.gz"
    sha256 "e97c4cae3785c557c36047a8fb0f715061767b7757ad04153ed7fd2102c713f0"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-f13317c.tar.gz"
    sha256 "0dfd2373668985745f7b21e6ebaec4c2bd3592d0032e7375a8330799dc164772"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-f13317c.tar.gz"
    sha256 "73eb1698c7392429cba50c4490e7e70bf202176f1466bd9fc65be3e2679eefba"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
