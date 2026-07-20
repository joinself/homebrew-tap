class ZktfSimAT000ff89e0a < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-ff89e0a"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-ff89e0a.tar.gz"
    sha256 "263a2e5c5d02ceea981977d83e889d9c9b4c50d6cdd8986503b4ce7b8929bc8a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-ff89e0a.tar.gz"
    sha256 "c3b72be043ef8f5c891c04d123ce6a14f98b7647393a1d367370e34621c7693f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-ff89e0a.tar.gz"
    sha256 "0ccd4a34f7bada3fa7306a753151790a5540d355c007703d5f65c6495c4100cb"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
