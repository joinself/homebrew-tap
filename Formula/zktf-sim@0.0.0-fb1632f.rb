class ZktfSimAT000fb1632f < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-fb1632f"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-fb1632f.tar.gz"
    sha256 "9435bae7f38db1dcbf095c8a9646c42b7126eeb36b362abe1c3719fc0a2bb255"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-fb1632f.tar.gz"
    sha256 "2068401173b91e5cbc0ff8a4373a4eb84206702afbfdd9528ed3b87b4bc24c7b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-fb1632f.tar.gz"
    sha256 "54a52cd689eee2e9ec282840be531ac312db3efabf8be0fc81c5349579fbf597"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
