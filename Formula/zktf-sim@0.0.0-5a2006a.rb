class ZktfSimAT0005a2006a < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-5a2006a"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-5a2006a.tar.gz"
    sha256 "6df894a3d16513a57a291d546c933ff153f28724324e2d57bcd92eee85cb447e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-5a2006a.tar.gz"
    sha256 "94758b487dfd4c6140abfbbf6fe35a896c86fb1e9cb52ed61783e2a07b60b122"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-5a2006a.tar.gz"
    sha256 "34855bd9cf5e2e54f00c05ef005d2d7412ef579e4ed08c6ff694fe5c10b38b04"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
