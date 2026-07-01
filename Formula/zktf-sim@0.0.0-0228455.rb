class ZktfSimAT0000228455 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-0228455"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-0228455.tar.gz"
    sha256 "2c1b59ccbbb352be429314fd0fbcdc5bb5005f09cb88580965651aca023d9be8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-0228455.tar.gz"
    sha256 "2505b69eea96330fb4e77f3ddc604f9cde183713c188a136a8d506f9532a7036"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-0228455.tar.gz"
    sha256 "685edd39226704db052bc79262b476f85fbf22eb03621d77d568281aa0d40c6b"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
