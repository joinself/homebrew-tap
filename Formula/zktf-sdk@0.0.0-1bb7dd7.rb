class ZktfSdkAT0001bb7dd7 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-1bb7dd7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-1bb7dd7.tar.gz"
    sha256 "452b9b156a25179c9637d149a416929b05c7f598f612833d49a6d98cdcec5392"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-1bb7dd7.tar.gz"
    sha256 "0eec273c8b541224288a43316c1b86242e7838051b20cbb3a612ef4a4a1798e6"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-1bb7dd7.tar.gz"
    sha256 "703c1e16b34dde87dfad782d5d99aec47906a649d1182618be5bb6823179f56f"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
