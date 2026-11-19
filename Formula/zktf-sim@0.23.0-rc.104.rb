class ZktfSimAT0230rc104 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.104"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.104.tar.gz"
    sha256 "ceae1d55aee06d20b81838d1e4b6dd65b609f58055261b34ed511334b19c65b1"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.104.tar.gz"
    sha256 "78a0fb60c00a5ec65b9956d9097670d739bed00b028ee10c0438dc80e1170339"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.104.tar.gz"
    sha256 "425a4d0ba6cd78009e5d0da72bca1176d0a90916ee060b989f397541e504c732"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
