class ZktfSimAT00000f03bf < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-00f03bf"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-00f03bf.tar.gz"
    sha256 "989d03b520259c9f4c3e95295b5636cc3459b56990d73f2008f432ee6a365b30"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-00f03bf.tar.gz"
    sha256 "62fef8d477d0276ca1e2966f4e6bff32cec1d7e89596e644d341b35573e87889"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-00f03bf.tar.gz"
    sha256 "3574ad269ceb9a23ff62c6e9560f7b83d5f6401e94514b22454770d4e383bea3"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
