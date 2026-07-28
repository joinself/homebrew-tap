class ZktfSimAT000ec964c4 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-ec964c4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-ec964c4.tar.gz"
    sha256 "9ffacd72bb623183a2d8030e1329e3f387c4ba08723225447f966bceeb753356"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-ec964c4.tar.gz"
    sha256 "bf6a37ffa6159a4cfd2a78bc7aef9d8586bae0a10f8dc72d04919aecb3259c3f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-ec964c4.tar.gz"
    sha256 "ccdefceff3167b145b1e7a7d00d5655d69382222e3aebfe43b895aa369e80c83"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
