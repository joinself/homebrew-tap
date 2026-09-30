class ZktfSimAT0005cffcdd < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-5cffcdd"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-5cffcdd.tar.gz"
    sha256 "2e192256c422ca01db5d19785c6014f3b1aff3ac8143b690ca245097f9dda06e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-5cffcdd.tar.gz"
    sha256 "3c7dfec4ff716d4293d28dffa07194818a41b6d717493680da3fbc87cf5a021f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-5cffcdd.tar.gz"
    sha256 "33cb9774cb50a1bc50168df75523a5aa6ec0edc0683ff1d1ea5b0e98ada5e638"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
