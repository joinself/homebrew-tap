class ZktfSimAT000fe9f1c5 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-fe9f1c5"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-fe9f1c5.tar.gz"
    sha256 "a6fc1a32e43d67bc1ef72b2f25fb24ebf0dda947a28723f528a544dd42a7aef6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-fe9f1c5.tar.gz"
    sha256 "35d0dbd2ac15b9f8874e18721390b9572f657ab0f726ae86de8c458ef7443667"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-fe9f1c5.tar.gz"
    sha256 "a4967e4d0c96d43b6ee6b1ff020290e106f108205ccebea62ec3de23248f343d"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
