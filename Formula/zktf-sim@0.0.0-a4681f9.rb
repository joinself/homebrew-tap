class ZktfSimAT000a4681f9 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-a4681f9"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-a4681f9.tar.gz"
    sha256 "f3de5dd8a03a63b2ba09d876b604f3b0c85e889cd4a102507e6e9420b704c535"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-a4681f9.tar.gz"
    sha256 "494c7ceda8980fdb6f473168259766531b11e019de99dff4dff51d9c08b4f350"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-a4681f9.tar.gz"
    sha256 "4a0a170f74f3feddf5478a92256cb2354790f939c1db9dee85787eb0582e6014"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
