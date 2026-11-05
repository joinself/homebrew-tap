class ZktfSimAT0230rc98 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.98"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.98.tar.gz"
    sha256 "eaec5f8113b56671c2e48e326c00c8dd2b04acdf0fc69390ec7722deee86b7be"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.98.tar.gz"
    sha256 "b554f32af24f4df52a6e2cd66ddd375940d76ffe146e97029db16ef75342c692"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.98.tar.gz"
    sha256 "20a30cbb347b7ba914ca8d6d1f165c05f3e21aac69ba2225a640e09e9f3a26fd"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
