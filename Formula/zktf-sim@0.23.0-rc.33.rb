class ZktfSimAT0230rc33 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.33"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.23.0-rc.33.tar.gz"
    sha256 "66749464f0855f09132af45a97c1ad02db2dffc7e468d8981cf5c24aadb1ae6d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.23.0-rc.33.tar.gz"
    sha256 "c285e07aa306a1cff1c32bc54de8d04d47553cc7ebc224d120813ba8b923fcbe"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.23.0-rc.33.tar.gz"
    sha256 "26de2813fc3787e8932e97259a23d47a583cf88f08d62efa1fd2bba47742f6d2"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
