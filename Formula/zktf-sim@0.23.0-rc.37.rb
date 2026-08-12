class ZktfSimAT0230rc37 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.37"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.37.tar.gz"
    sha256 "7644ce8c44aaf6ad626678eef5aa5333eceae0971cccde96ce98018df9d28ac5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.37.tar.gz"
    sha256 "15ee93a1c6ed040e8b6804619b6469be57e3370272af23b72efca1d3bc1f3cfd"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.37.tar.gz"
    sha256 "fe81f00bc3b8ce06a28228de3ea66d035fb578dd8da1be85738c540472cbcb75"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
