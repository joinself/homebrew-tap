class ZktfSimAT0008674879 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-8674879"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-8674879.tar.gz"
    sha256 "7d2fa1a9dd28138d3bf7af23350033113add88b9635b3033fef05be24e907dc5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-8674879.tar.gz"
    sha256 "566341a8722ef8216084a8d044678282ffa47d426cae36741fe9a9eed5aa7efb"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-8674879.tar.gz"
    sha256 "ed6a335e061aecebe3ecf0ad243a420adbe1d1438a3aa361cd1aa0e7b3e6a83d"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
