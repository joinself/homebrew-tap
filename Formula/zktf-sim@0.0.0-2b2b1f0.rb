class ZktfSimAT0002b2b1f0 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-2b2b1f0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-2b2b1f0.tar.gz"
    sha256 "9d63e2ea0c6bdec3ae04e89cbd41827bae0c148b7b3848ce168592f43cff9053"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-2b2b1f0.tar.gz"
    sha256 "9a9f8e22f15b6919df77a946578dca84b7732e262f01e334a4401fdca7dbf73e"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-2b2b1f0.tar.gz"
    sha256 "b9116b08684017352ad2cf68bca58d74724041e04e8d3516af872a6aaf274e94"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
