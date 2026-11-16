class ZktfSimAT0230rc100 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.100"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.100.tar.gz"
    sha256 "0088c1c9da9aa7a54a5c460c37d852a3daab4de757d052e8d1b105ea9b7f211d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.100.tar.gz"
    sha256 "aae1a91e64f21020d64d997409aad005aed266541de2a80f9ab7877ea4d5333f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.100.tar.gz"
    sha256 "255afd55ea382a7d36bf1e8bbc7156ad1d7369481d9df050eccf6dd1b085ff8a"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
