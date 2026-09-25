class ZktfSimAT0009922046 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-9922046"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-9922046.tar.gz"
    sha256 "38095541656c5e93a103ad041438aafaa501b65be2159824934328405c25aaf6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-9922046.tar.gz"
    sha256 "83847985119124e5166fba465737f0dc9681efd264c9a09d28db509036748614"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-9922046.tar.gz"
    sha256 "380889776ad67f6b76dec1481ca75953c9690128ba8b6c8511d074a6b84ab94f"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
