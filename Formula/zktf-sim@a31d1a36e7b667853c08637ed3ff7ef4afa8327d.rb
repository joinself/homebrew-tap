class ZktfSimATa31d1a36e7b667853c08637ed3ff7ef4afa8327d < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "a31d1a36e7b667853c08637ed3ff7ef4afa8327d"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-a31d1a36e7b667853c08637ed3ff7ef4afa8327d-darwin-arm64.tar.gz"
    sha256 "54e19002230e52963d28fa1c575d9e0a41da1b2111b0d8d3df2a6826bed47e82"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-a31d1a36e7b667853c08637ed3ff7ef4afa8327d-linux-amd64.tar.gz"
    sha256 "6ecb3d0759e978354bef9c0dab20a38e036e72f3f0a1c2f4c6f5c8b53d087bec"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-a31d1a36e7b667853c08637ed3ff7ef4afa8327d-linux-arm64.tar.gz"
    sha256 "349b509d03fee2835e8f813daa7a866a27380efc61f397218a95b62887a8ba9c"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
