class ZktfSimAT00013d36eb < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-13d36eb"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-13d36eb.tar.gz"
    sha256 "450ac04b96c7f96020843b49d56a825c48744a92991bc82e7417869512bc95ae"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-13d36eb.tar.gz"
    sha256 "9a137aa1826e5f0a2aac7c57c577f7e2dafb35a5ed7aa555f56951a60a9b7413"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-13d36eb.tar.gz"
    sha256 "0487fc1f64f2614feb2270eb08f1170049aeac93dc2f6b0e3e973f4d5b8c9c9d"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
