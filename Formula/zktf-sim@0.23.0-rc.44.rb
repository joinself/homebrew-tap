class ZktfSimAT0230rc44 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.44"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.44.tar.gz"
    sha256 "628da1730855de760098c3da127dbc91efa0a01fe9a1f2c2e7f4d8bfc6c46417"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.44.tar.gz"
    sha256 "3bf42c1c23d1bbf182296c16bc6fe4639c371f14b978e7f66210ea4bda7b7180"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.44.tar.gz"
    sha256 "63abed11365bb77f7ed43a18ba9049e71c56734c76ff15cdc1df1f18eb7efd53"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
