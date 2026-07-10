class ZktfSimAT000aa7431c < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-aa7431c"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-aa7431c.tar.gz"
    sha256 "9b7c917ca292c60bab740323a2eb28d43e7cd9a3b7f4d968ae74f913e17bcabb"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-aa7431c.tar.gz"
    sha256 "80f690f32ff1f6449fa7c20c57fa447843854db04b44c95f2ca14706e89c2a78"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-aa7431c.tar.gz"
    sha256 "ca96e50abdc5a18f6075554a384944d051a9d5baeaf2b19ee17c83c904e26efb"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
