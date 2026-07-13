class ZktfSimAT0230rc19 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.19"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.19.tar.gz"
    sha256 "b373053efeb7395897ea623d508396f82d365a20819f1bcc61fa39b2bf7bdc81"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.19.tar.gz"
    sha256 "5f72b81a7a857eafc9614569e93ff4f9fbcfcb157063e0a1940304d9149174a5"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.19.tar.gz"
    sha256 "b998ae39c80304017b61cb8b0255dfa2a7570fd43fb24341057c4beda7f86016"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
