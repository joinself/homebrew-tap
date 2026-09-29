class ZktfSimAT0005260949 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-5260949"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-5260949.tar.gz"
    sha256 "9c8fc999a500886a305fe8b287227f846c9c487dc4b66e3d8b41efa55d79b2bb"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-5260949.tar.gz"
    sha256 "11ff4f97ab709f0dc15d709cd54c6e926a4f3e55a55fe376ae22976ab91e29b9"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-5260949.tar.gz"
    sha256 "787e2feba76c7182d936fd46a8f63d857a54a7dd4cb0db75aa63b61cfdecc88b"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
