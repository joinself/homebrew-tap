class ZktfSimAT0230rc73 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.73"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.73.tar.gz"
    sha256 "65c386e84152c72f8e25c18f34a0343c83b973cf90218ed681e0ca7a6e9d25de"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.73.tar.gz"
    sha256 "12095d1018134e8e006081cb8b901dc50c589327efe65a1fcd9e19f67921bece"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.73.tar.gz"
    sha256 "4bb3d35f59fdc5c4f1ac81e5ff5071423429039dc42482cbb460c1e122f72e0e"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
