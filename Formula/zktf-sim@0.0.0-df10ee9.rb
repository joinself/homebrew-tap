class ZktfSimAT000df10ee9 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-df10ee9"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-df10ee9.tar.gz"
    sha256 "4eb3ef8fc757d354bb56fc50dcaf4f10d5415a8759cee3c937ea6fea60a5939a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-df10ee9.tar.gz"
    sha256 "20a36627d5e84f945eed54be0067c8223c45880a30dc8265c0aa15e24fbbbfd7"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-df10ee9.tar.gz"
    sha256 "703d83d5835be29426480ef3cb2eb4e27d994bf8dafab39f32895966fb4f6b04"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
