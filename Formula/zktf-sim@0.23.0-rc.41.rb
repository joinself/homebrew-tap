class ZktfSimAT0230rc41 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.41"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.41.tar.gz"
    sha256 "5d7d601cb1e3abb39f2f7663765776fc8a2ae2d338678c30f53cf9a40220c274"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.41.tar.gz"
    sha256 "8064bc7b650e90c57fc1961e633233bd63eb591853f89f7b306a9e4135783a31"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.41.tar.gz"
    sha256 "5a983d1349f6a42e1fbeac7927d529dcadb7ce6b5af496386985de687e31ba15"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
