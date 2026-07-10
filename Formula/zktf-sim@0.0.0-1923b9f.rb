class ZktfSimAT0001923b9f < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-1923b9f"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-1923b9f.tar.gz"
    sha256 "7c6333efe627fbc05c90f2afd6983fdc6797ff995e9e73a6641af85cd711e534"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-1923b9f.tar.gz"
    sha256 "cb314871618fc2b43e9693ab7980a34f8b1b5a2e177d0572e5c5fe13056e198b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-1923b9f.tar.gz"
    sha256 "867373589e814ca3a05f007c07cb85a52dec6dd3bd84eeafe8baf17a36c71548"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
