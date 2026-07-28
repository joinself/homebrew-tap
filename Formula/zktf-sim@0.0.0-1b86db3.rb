class ZktfSimAT0001b86db3 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-1b86db3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-1b86db3.tar.gz"
    sha256 "97d51a2159842a26cb0c48d157cc269daf83e5942f37679eeb6022e6b38153fc"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-1b86db3.tar.gz"
    sha256 "2c608d4d9567e96574bc42ae5a093bc502351795302e48b1892ecba12ecf7b43"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-1b86db3.tar.gz"
    sha256 "5b6c9b49dc4c62329ec3ea3b94f81610ba8fa6866415da9404566f9a1fa9ba10"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
