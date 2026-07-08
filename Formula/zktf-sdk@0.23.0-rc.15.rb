class ZktfSdkAT0230rc15 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.15"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.15.tar.gz"
    sha256 "b145dd5de91e420e41ba77e8ce6aa32fbb6dc5036e6e5f6caf29d8b6a43d8129"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.15.tar.gz"
    sha256 "34d28f872db06a33caeb8b70208d4a09b7770b2fd945c4014904aae0d2f969c8"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.15.tar.gz"
    sha256 "7cb97314038bc17efc16a068598ba7feab4a39e550ac838ddac38fce0e113e84"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
