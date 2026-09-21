class ZktfSimAT0001007aa0 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-1007aa0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-1007aa0.tar.gz"
    sha256 "7ccee682972f62d867c27ae59d9a74912af5edec9d6786e6e007fbabf5749d6f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-1007aa0.tar.gz"
    sha256 "c81e0763a5fe33cfde4dbc93c071a09cbd7c78d4a05aaba3c2b16c504e5d0981"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-1007aa0.tar.gz"
    sha256 "a388c073c4475994dc1153e2cd171d1308cad717b1e0d9e89053729d1971f736"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
