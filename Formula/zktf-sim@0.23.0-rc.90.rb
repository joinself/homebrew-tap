class ZktfSimAT0230rc90 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.90"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.90.tar.gz"
    sha256 "802dfa1cc99a8411607a133a0d45eaa1a061acc71eb7acb06462cfbf992514e6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.90.tar.gz"
    sha256 "58ccebc7256aeb950f84205d30076f72120b4577d8edc794d8dd4a9dc8b33662"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.90.tar.gz"
    sha256 "060d114ced0a2ba2a04016d135312afc83d9e346249cffe4e36aac6543708724"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
