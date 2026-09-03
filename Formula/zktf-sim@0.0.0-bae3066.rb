class ZktfSimAT000bae3066 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-bae3066"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-bae3066.tar.gz"
    sha256 "e2ebeac4fa800f360a0054c1eae20c6ee1610818baf98e3e2f36027d1a127dd6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-bae3066.tar.gz"
    sha256 "83572d5a3906757f7dfe84e413b64b0b8f94a604792667bed3932253d71dead9"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-bae3066.tar.gz"
    sha256 "b08c5a6574c87259f3a1132acc1b0356826e531590a6d9a49c0a1a5ad587102a"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
