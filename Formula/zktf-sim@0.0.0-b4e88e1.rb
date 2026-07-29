class ZktfSimAT000b4e88e1 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-b4e88e1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-b4e88e1.tar.gz"
    sha256 "cd276c3625a1546cfc0fd2e32efc11922f2efe7c7f090594a191dfa25ba4f805"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-b4e88e1.tar.gz"
    sha256 "3e86747e5af00a95166df3079865b42dc073ffce4cd46ebdf576e98d1b6d979c"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-b4e88e1.tar.gz"
    sha256 "d5f74d2316bee947902d9649467c2f093c1a8215f6258d03b4621bd2fcca4929"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
