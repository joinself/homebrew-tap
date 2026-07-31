class ZktfSimAT000c996fd5 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-c996fd5"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-c996fd5.tar.gz"
    sha256 "4b19dd6578d97ad08cc179dae9fe7fbba51a8bade6a8e6d547458835f7cbcda6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-c996fd5.tar.gz"
    sha256 "df6f57acffee91a788359cbd504d788d077e4d71cb51b45141758c1aa867a10c"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-c996fd5.tar.gz"
    sha256 "63ac7e7cd748184983140adc513b3791d724163d31780537d83bf32d1cac0096"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
