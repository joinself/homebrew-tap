class ZktfSimAT0230rc2 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.2.tar.gz"
    sha256 "af1eb806b224473fbb744b8f6a3531311275ca21ac9fe6dc169fd65ede5cd995"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.2.tar.gz"
    sha256 "ce9fb9cc918fbb8ed31ddbc5aa32d7cbb3539e23f845d19db451d5a95af3398b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.2.tar.gz"
    sha256 "53bfad29de46d61007cb770021fb127f7562230d83e52d91cfc24ccc712eb241"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
