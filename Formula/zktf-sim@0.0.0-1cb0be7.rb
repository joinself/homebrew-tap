class ZktfSimAT0001cb0be7 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-1cb0be7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-1cb0be7.tar.gz"
    sha256 "0f28d81edd7bf8284a083a20b4c835a870d75d58484801646d109c5930ff5b02"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-1cb0be7.tar.gz"
    sha256 "ffb0f0b2821d3a8e0840d34839744477effabd99260777527bce87dc5ff80134"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-1cb0be7.tar.gz"
    sha256 "a187567c5dcd34134290ee620c580aa2613e14bf66610c6f13d61a46904de88f"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
