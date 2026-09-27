class ZktfSimAT0230rc60 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.60"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.60.tar.gz"
    sha256 "89a3d081bcec3a39b0251f9815cfcfb5eaa2215ba2bd2318364ae87688aa3c9c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.60.tar.gz"
    sha256 "4fab931836c446f74faeb976567f309d29a6cbcf4b79136b454c8e2d5670b0ff"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.60.tar.gz"
    sha256 "affd1ccb24be4f83b2c02ab32b0db0d333bea87ded1d21d6db3454ce2e13bcaa"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
