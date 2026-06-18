class ZktfSimAT0003934db7 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-3934db7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-3934db7.tar.gz"
    sha256 "231d842ea969e33dc7176b42b98ff060375b4faa971599ddc2fc8ff537b3cc57"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-3934db7.tar.gz"
    sha256 "a20eab51f37b9dab7de51cdc9a33d654c8b2af13df012b0a72f8309eb2dbbf21"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-3934db7.tar.gz"
    sha256 "fdf80e65979c4c8caf44dad56c5c07aa766064fad91154c7143b2c4c7c171ca0"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
