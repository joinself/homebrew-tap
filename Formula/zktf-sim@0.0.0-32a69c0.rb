class ZktfSimAT00032a69c0 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-32a69c0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-32a69c0.tar.gz"
    sha256 "e8d015095beb495de3c7f385c1f9c7af083d06ed6b6a2cabbafd683f2ae3f069"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-32a69c0.tar.gz"
    sha256 "0c0175e6e0ca061fd8d82d8d9cb5f3463908be4dcc81ead10a0288c290642cfd"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-32a69c0.tar.gz"
    sha256 "85ad267b40d3d5cda5c4c14fe7188713df23df73505dc52867fe71c3d58b3931"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
