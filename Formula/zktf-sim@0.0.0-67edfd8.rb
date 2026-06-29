class ZktfSimAT00067edfd8 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-67edfd8"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-67edfd8.tar.gz"
    sha256 "d79cd587f905d7edafcc528f1f57e648a5ddda412f829fecde0bf58a56c36785"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-67edfd8.tar.gz"
    sha256 "c72cbb9b55790266953cd439b75831c5c8bf1f9f3781e431fa746b0d7df0b45f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-67edfd8.tar.gz"
    sha256 "e7654e2383f24fc6f49254179e8ed411587c07844e5bf0f169472de9b7c19aab"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
