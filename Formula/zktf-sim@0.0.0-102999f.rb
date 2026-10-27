class ZktfSimAT000102999f < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-102999f"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-102999f.tar.gz"
    sha256 "de295c6cf1d003f3a175190e21f08d8d48fd4ca3ab7aaa21bfd6dfee15909fb8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-102999f.tar.gz"
    sha256 "cc7ced0d79d7e20bd1deea35f4933b013d099dc05974ef1687f0c4cdd0054f8f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-102999f.tar.gz"
    sha256 "fc4a68512c6c3bfe02bbe507554ac46b1da0874ffec24d6e608625d7ada67ead"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
