class ZktfSimAT00082e5d69 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-82e5d69"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-82e5d69.tar.gz"
    sha256 "e9bd4026867acbe30554f759a11381f5040e62c78d8bd093c05896f886c35c68"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-82e5d69.tar.gz"
    sha256 "0f380b02d6b72a09fbe14930dcce4ac4f1f834ef2d4a23dc72d72070dc51645a"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-82e5d69.tar.gz"
    sha256 "340ba6c965833681cf5aa77efae9d1abff8aaae2189bec86914fad2db973f4f4"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
