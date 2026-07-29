class ZktfSimAT00088b1ba4 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-88b1ba4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-88b1ba4.tar.gz"
    sha256 "37f6ad4ffbb53f9c9ca975edf6901e5fd54259e37a7a259289b3d3d5ffff2dc7"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-88b1ba4.tar.gz"
    sha256 "3be925cc3a717578e7f35df11757e75e4ccfcb77b7b27fd7db0880638d571d49"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-88b1ba4.tar.gz"
    sha256 "b7f53d02d47f813effc1dde86f73a20ecaaf24e537a42b931ef5561d740e6dcf"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
