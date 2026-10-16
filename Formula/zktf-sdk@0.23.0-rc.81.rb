class ZktfSdkAT0230rc81 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.81"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.81.tar.gz"
    sha256 "4549c0dfc9d2a69b2156d61e31ab73657f0aca32957502302fa2ee978d482ed0"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.81.tar.gz"
    sha256 "f656c202e7c13e1afb62a5c9a46d3619c55a0e8519d8d7ba95641235e0247392"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.81.tar.gz"
    sha256 "c9016de9e966881d1b4ea86fcb5d38a2c86439d4c35b7a42fb66b61b412ae3b8"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
